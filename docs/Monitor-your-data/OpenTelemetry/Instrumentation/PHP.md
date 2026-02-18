# PHP

This guide demonstrates how to instrument a PHP application with OpenTelemetry to send traces, metrics, and logs to FusionReactor Cloud.

## Prerequisites

* **FusionReactor API Key**: Obtain this from **Account Settings > API Keys** in FusionReactor Cloud.
* **PHP**: PHP 8.0 or later with the following extensions:
  - `ext-json`
  - `ext-curl`
  - `ext-mbstring`
* **Composer**: PHP dependency manager
* **Telemetry Pipeline**: You must have either an [OpenTelemetry Collector](/Monitor-your-data/OpenTelemetry/Shipping/Collector/) or [Grafana Alloy](/Monitor-your-data/OpenTelemetry/Shipping/Grafana-agent/) configured and running to receive data from your PHP application.

!!! tip "Set up your telemetry pipeline first"
    Before instrumenting your PHP application, ensure you have completed either the [Collector setup guide](/Monitor-your-data/OpenTelemetry/Shipping/Collector/) or [Grafana Alloy setup guide](/Monitor-your-data/OpenTelemetry/Shipping/Grafana-agent/) so your telemetry data has a destination.

## Step 1: Install dependencies

Create a new PHP project and install OpenTelemetry packages via Composer:

```bash
composer init --name="my-org/otel-demo" --no-interaction
composer require \
    open-telemetry/sdk \
    open-telemetry/exporter-otlp \
    php-http/guzzle7-adapter \
    guzzlehttp/guzzle
```

## Step 2: Create OpenTelemetry initialization

Create a file named `otel-bootstrap.php` to configure OpenTelemetry:

```php
<?php

require 'vendor/autoload.php';

use OpenTelemetry\API\Globals;
use OpenTelemetry\API\Trace\Propagation\TraceContextPropagator;
use OpenTelemetry\SDK\Trace\TracerProvider;
use OpenTelemetry\SDK\Trace\SpanProcessor\BatchSpanProcessor;
use OpenTelemetry\SDK\Resource\ResourceInfoFactory;
use OpenTelemetry\SDK\Resource\ResourceInfo;
use OpenTelemetry\SDK\Common\Attribute\Attributes;
use OpenTelemetry\Contrib\Otlp\SpanExporter;
use OpenTelemetry\Contrib\Otlp\MetricExporter;
use OpenTelemetry\SDK\Metrics\MeterProvider;
use OpenTelemetry\SDK\Metrics\MetricReader\ExportingReader;
use OpenTelemetry\SDK\Common\Export\Http\PsrTransportFactory;

// Get OTLP endpoint from environment or use default
$otlpEndpoint = getenv('OTEL_EXPORTER_OTLP_ENDPOINT') ?: 'http://localhost:4318';

// Create resource with service information
$resource = ResourceInfoFactory::emptyResource()->merge(
    ResourceInfo::create(Attributes::create([
        'service.name' => 'php-otel-demo',
        'service.version' => '1.0.0',
    ]))
);

// Configure trace exporter
$transport = (new PsrTransportFactory())->create(
    $otlpEndpoint . '/v1/traces',
    'application/json'
);

$spanExporter = new SpanExporter($transport);

// Create tracer provider
$tracerProvider = TracerProvider::builder()
    ->addSpanProcessor(
        new BatchSpanProcessor($spanExporter)
    )
    ->setResource($resource)
    ->build();

// Set global tracer provider
Globals::registerInitializer(function () use ($tracerProvider) {
    return $tracerProvider;
});

// Configure metric exporter
$metricTransport = (new PsrTransportFactory())->create(
    $otlpEndpoint . '/v1/metrics',
    'application/json'
);

$metricExporter = new MetricExporter($metricTransport);

// Create meter provider
$metricReader = new ExportingReader($metricExporter);
$meterProvider = MeterProvider::builder()
    ->setResource($resource)
    ->addReader($metricReader)
    ->build();

// Set global meter provider
Globals::registerInitializer(function () use ($meterProvider) {
    return $meterProvider;
});

// Configure trace context propagation
TraceContextPropagator::getInstance();

echo "OpenTelemetry initialized successfully\n";
```

## Step 3: Create your instrumented application

Create a file named `index.php` with a simple web application:

```php
<?php

require 'otel-bootstrap.php';

use OpenTelemetry\API\Globals;
use OpenTelemetry\API\Trace\SpanKind;
use OpenTelemetry\API\Trace\StatusCode;

// Get tracer and meter
$tracer = Globals::tracerProvider()->getTracer('php-otel-demo', '1.0.0');
$meter = Globals::meterProvider()->getMeter('php-otel-demo', '1.0.0');

// Create custom metrics
$requestCounter = $meter->createCounter(
    'http_requests_total',
    'requests',
    'Total number of HTTP requests'
);

$requestDuration = $meter->createHistogram(
    'http_request_duration_ms',
    'ms',
    'HTTP request duration in milliseconds'
);

// Start parent span for the request
$rootSpan = $tracer->spanBuilder('http-request')
    ->setSpanKind(SpanKind::KIND_SERVER)
    ->startSpan();

$rootSpan->setAttribute('http.method', $_SERVER['REQUEST_METHOD'] ?? 'GET');
$rootSpan->setAttribute('http.url', $_SERVER['REQUEST_URI'] ?? '/');
$rootSpan->setAttribute('http.user_agent', $_SERVER['HTTP_USER_AGENT'] ?? 'unknown');

$startTime = microtime(true);

try {
    // Route handling
    $path = parse_url($_SERVER['REQUEST_URI'] ?? '/', PHP_URL_PATH);

    switch ($path) {
        case '/':
            handleHome($tracer);
            break;

        case '/fibonacci':
            $n = isset($_GET['n']) ? (int)$_GET['n'] : 10;
            handleFibonacci($tracer, $n);
            break;

        case '/health':
            handleHealth();
            break;

        default:
            http_response_code(404);
            echo json_encode(['error' => 'Not found']);
            $rootSpan->setStatus(StatusCode::STATUS_ERROR, 'Not found');
    }

    $rootSpan->setStatus(StatusCode::STATUS_OK);

} catch (Exception $e) {
    http_response_code(500);
    echo json_encode(['error' => $e->getMessage()]);

    $rootSpan->recordException($e);
    $rootSpan->setStatus(StatusCode::STATUS_ERROR, $e->getMessage());

} finally {
    $duration = (microtime(true) - $startTime) * 1000;

    // Record metrics
    $requestCounter->add(1, [
        'method' => $_SERVER['REQUEST_METHOD'] ?? 'GET',
        'path' => $path ?? '/',
        'status' => http_response_code(),
    ]);

    $requestDuration->record($duration, [
        'method' => $_SERVER['REQUEST_METHOD'] ?? 'GET',
        'path' => $path ?? '/',
    ]);

    $rootSpan->end();
}

function handleHome($tracer) {
    $span = $tracer->spanBuilder('handle-home')->startSpan();

    header('Content-Type: application/json');
    echo json_encode([
        'message' => 'Welcome to OpenTelemetry PHP Demo',
        'endpoints' => [
            '/' => 'This page',
            '/fibonacci?n=20' => 'Calculate Fibonacci sequence',
            '/health' => 'Health check',
        ],
    ]);

    $span->end();
}

function handleFibonacci($tracer, $n) {
    $span = $tracer->spanBuilder('handle-fibonacci')->startSpan();
    $span->setAttribute('fibonacci.n', $n);

    if ($n < 0 || $n > 50) {
        throw new InvalidArgumentException('n must be between 0 and 50');
    }

    $result = calculateFibonacci($tracer, $n);

    header('Content-Type: application/json');
    echo json_encode([
        'n' => $n,
        'result' => $result,
    ]);

    $span->end();
}

function calculateFibonacci($tracer, $n) {
    $span = $tracer->spanBuilder('fibonacci-calculation')->startSpan();
    $span->setAttribute('iteration.count', $n);

    $a = 0;
    $b = 1;

    for ($i = 0; $i < $n; $i++) {
        $temp = $a;
        $a = $b;
        $b = $temp + $b;
    }

    $span->end();
    return $a;
}

function handleHealth() {
    header('Content-Type: application/json');
    echo json_encode([
        'status' => 'healthy',
        'timestamp' => date('c'),
    ]);
}
```

## Step 4: Run locally with PHP built-in server

Start your application using PHP's built-in web server:

```bash
php -S localhost:8000 index.php
```

Test the endpoints:

```bash
# Test root endpoint
curl http://localhost:8000/

# Calculate Fibonacci
curl http://localhost:8000/fibonacci?n=20

# Check health
curl http://localhost:8000/health
```

The application will send telemetry to your local collector at `localhost:4318`.

!!! warning "Cannot connect to collector?"
    **If you see:** `Connection refused` or `Failed to export`
    **Fix:** Your collector is not running. Start it first using the [Collector setup guide](/Monitor-your-data/OpenTelemetry/Shipping/Collector/).

## Step 5: Verify in FusionReactor Cloud

1. Generate some traffic:
   ```bash
   # Make several requests
   for i in {1..10}; do curl "http://localhost:8000/fibonacci?n=$i"; done
   ```

2. Log in to **FusionReactor Cloud**

3. Navigate to **Explore**:
   - **Traces**: Select `Resource Service Name = php-otel-demo`
   - **Metrics**: Search for `http_requests_total{job="php-otel-demo"}`

You should see:
- Trace spans for each HTTP request
- Nested spans showing request handling and Fibonacci calculation
- Metrics tracking request counts and durations
- Span attributes showing HTTP method, URL, and user agent

## Next steps

* Add automatic instrumentation with [OpenTelemetry PHP auto-instrumentation](https://github.com/open-telemetry/opentelemetry-php-instrumentation)
* Instrument Laravel applications with [laravel-otel](https://github.com/open-telemetry/opentelemetry-php-contrib/tree/main/src/Instrumentation/Laravel)
* Instrument Symfony applications with [symfony-otel](https://github.com/open-telemetry/opentelemetry-php-contrib/tree/main/src/Instrumentation/Symfony)
* Add database instrumentation with PDO or Doctrine extensions
* Create [custom dashboards](/Getting-started/Tutorials/create-dashboard/) in FusionReactor Cloud

---

## Related Guides

- **[Configuration Guide](/Monitor-your-data/OpenTelemetry/Configuration/)**: Configure semantic conventions, resource attributes, and sampling strategies
- **[Visualize Your Data](/Monitor-your-data/OpenTelemetry/Visualize/Metrics/)**: Query and visualize your telemetry in FusionReactor Cloud
- **[Troubleshooting](/Monitor-your-data/OpenTelemetry/Troubleshooting/)**: Debug common instrumentation issues
- **[FAQ](/Monitor-your-data/OpenTelemetry/FAQ/)**: Common questions about instrumentation

---

!!! info "Learn more"
    [OpenTelemetry PHP Documentation](https://opentelemetry.io/docs/languages/php/)

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.
