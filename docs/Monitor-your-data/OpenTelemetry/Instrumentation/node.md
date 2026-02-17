# Node.js

This guide demonstrates how to instrument a Node.js application with OpenTelemetry to send traces, metrics, and logs to FusionReactor Cloud.

## Prerequisites

* **FusionReactor API Key**: Obtain this from **Account Settings > API Keys** in FusionReactor Cloud.
* **Node.js**: Node.js 18 or later installed on your system.
* **Telemetry Pipeline**: You must have either an [OpenTelemetry Collector](/Monitor-your-data/OpenTelemetry/Shipping/Collector/) or [Grafana Alloy](/Monitor-your-data/OpenTelemetry/Shipping/Grafana-agent/) configured and running to receive data from your Node.js application.

!!! tip "Set up your telemetry pipeline first"
    Before instrumenting your Node.js application, ensure you have completed either the [Collector setup guide](/Monitor-your-data/OpenTelemetry/Shipping/Collector/) or [Grafana Alloy setup guide](/Monitor-your-data/OpenTelemetry/Shipping/Grafana-agent/) so your telemetry data has a destination.

## Step 1: Install dependencies

Create a new Node.js project and install the required OpenTelemetry packages:

```bash
npm init -y
npm install express
npm install @opentelemetry/sdk-node
npm install @opentelemetry/auto-instrumentations-node
npm install @opentelemetry/exporter-trace-otlp-http
npm install @opentelemetry/exporter-metrics-otlp-http
npm install @opentelemetry/exporter-logs-otlp-http
npm install @opentelemetry/api-logs
```

## Step 2: Configure OpenTelemetry

Create a file named `tracing.js` to configure OpenTelemetry instrumentation:

```javascript
// tracing.js - OpenTelemetry configuration
const { NodeSDK } = require('@opentelemetry/sdk-node');
const { getNodeAutoInstrumentations } = require('@opentelemetry/auto-instrumentations-node');
const { OTLPTraceExporter } = require('@opentelemetry/exporter-trace-otlp-http');
const { OTLPMetricExporter } = require('@opentelemetry/exporter-metrics-otlp-http');
const { OTLPLogExporter } = require('@opentelemetry/exporter-logs-otlp-http');
const { PeriodicExportingMetricReader } = require('@opentelemetry/sdk-metrics');
const { Resource } = require('@opentelemetry/resources');
const { SemanticResourceAttributes } = require('@opentelemetry/semantic-conventions');

// Configure the OTLP endpoint (local collector)
const COLLECTOR_URL = process.env.OTEL_EXPORTER_OTLP_ENDPOINT || 'http://localhost:4318';

// Define service resource
const resource = new Resource({
  [SemanticResourceAttributes.SERVICE_NAME]: 'node-otel-demo',
  [SemanticResourceAttributes.SERVICE_VERSION]: '1.0.0',
});

// Configure exporters
const traceExporter = new OTLPTraceExporter({
  url: `${COLLECTOR_URL}/v1/traces`,
});

const metricExporter = new OTLPMetricExporter({
  url: `${COLLECTOR_URL}/v1/metrics`,
});

const logExporter = new OTLPLogExporter({
  url: `${COLLECTOR_URL}/v1/logs`,
});

// Initialize the SDK
const sdk = new NodeSDK({
  resource: resource,
  traceExporter: traceExporter,
  metricReader: new PeriodicExportingMetricReader({
    exporter: metricExporter,
    exportIntervalMillis: 5000,
  }),
  logRecordProcessor: new (require('@opentelemetry/sdk-logs').BatchLogRecordProcessor)(logExporter),
  instrumentations: [
    getNodeAutoInstrumentations({
      // Automatic instrumentation for Express, HTTP, etc.
      '@opentelemetry/instrumentation-fs': { enabled: false },
    }),
  ],
});

// Start the SDK
sdk.start();

// Graceful shutdown
process.on('SIGTERM', () => {
  sdk.shutdown()
    .then(() => console.log('OpenTelemetry terminated'))
    .catch((error) => console.error('Error terminating OpenTelemetry', error))
    .finally(() => process.exit(0));
});

console.log('OpenTelemetry initialized');
```

## Step 3: Create your instrumented application

Create a file named `app.js` with a simple Express server:

```javascript
// app.js - Simple Express application with custom instrumentation
const express = require('express');
const { trace, metrics, context } = require('@opentelemetry/api');

const app = express();
const PORT = process.env.PORT || 3000;

// Get tracer and meter
const tracer = trace.getTracer('node-otel-demo');
const meter = metrics.getMeter('node-otel-demo');

// Create custom metrics
const requestCounter = meter.createCounter('http_requests_total', {
  description: 'Total number of HTTP requests',
});

const requestDuration = meter.createHistogram('http_request_duration_ms', {
  description: 'HTTP request duration in milliseconds',
});

// Middleware to track request metrics
app.use((req, res, next) => {
  const startTime = Date.now();

  res.on('finish', () => {
    const duration = Date.now() - startTime;

    requestCounter.add(1, {
      method: req.method,
      route: req.route?.path || req.path,
      status: res.statusCode,
    });

    requestDuration.record(duration, {
      method: req.method,
      route: req.route?.path || req.path,
    });
  });

  next();
});

// Routes with custom spans
app.get('/', (req, res) => {
  const span = tracer.startSpan('handle-root');
  span.setAttribute('http.method', 'GET');
  span.setAttribute('http.route', '/');

  console.log('Handling root request');
  res.json({ message: 'Hello from OpenTelemetry instrumented Node.js app!' });

  span.end();
});

app.get('/fibonacci/:n', (req, res) => {
  const n = parseInt(req.params.n);
  const span = tracer.startSpan('calculate-fibonacci');
  span.setAttribute('fibonacci.n', n);

  try {
    if (isNaN(n) || n < 0) {
      throw new Error('Invalid input: n must be a non-negative number');
    }

    const result = fibonacci(n);
    console.log(`Calculated Fibonacci(${n}) = ${result}`);

    res.json({ n, result });
  } catch (error) {
    span.recordException(error);
    span.setStatus({ code: 2, message: error.message });
    console.error(`Error calculating Fibonacci: ${error.message}`);
    res.status(400).json({ error: error.message });
  } finally {
    span.end();
  }
});

app.get('/health', (req, res) => {
  res.json({ status: 'healthy', timestamp: new Date().toISOString() });
});

// Fibonacci calculation with tracing
function fibonacci(n) {
  const span = tracer.startSpan('fibonacci-calculation');
  span.setAttribute('iteration.count', n);

  let a = 0, b = 1;

  for (let i = 0; i < n; i++) {
    const temp = a;
    a = b;
    b = temp + b;
  }

  span.end();
  return a;
}

// Start server
app.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT}`);
  console.log(`Try: http://localhost:${PORT}/fibonacci/10`);
});
```

## Step 4: Create startup script

Create a `package.json` script to ensure tracing is loaded first:

```json
{
  "name": "node-otel-demo",
  "version": "1.0.0",
  "scripts": {
    "start": "node -r ./tracing.js app.js"
  },
  "dependencies": {
    "express": "^4.18.2",
    "@opentelemetry/sdk-node": "^0.45.0",
    "@opentelemetry/auto-instrumentations-node": "^0.39.0",
    "@opentelemetry/exporter-trace-otlp-http": "^0.45.0",
    "@opentelemetry/exporter-metrics-otlp-http": "^0.45.0",
    "@opentelemetry/exporter-logs-otlp-http": "^0.45.0",
    "@opentelemetry/api-logs": "^0.45.0"
  }
}
```

## Step 5: Run locally

Start your instrumented application:

```bash
npm start
```

Test the endpoints:

```bash
# Test root endpoint
curl http://localhost:3000/

# Calculate Fibonacci
curl http://localhost:3000/fibonacci/20

# Check health
curl http://localhost:3000/health
```

The application will send telemetry to your local collector at `localhost:4318`.

## Step 6: Deploy with Docker

Create a `Dockerfile`:

```dockerfile
FROM node:18-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy application files
COPY tracing.js app.js ./

# Expose port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
```

Create a `docker-compose.yml` to run both the collector and your Node.js app:

```yaml
services:
  otelcollector:
    image: otel/opentelemetry-collector-contrib:latest
    container_name: otelcollector
    restart: unless-stopped
    environment:
      - FR_API_KEY=${FR_API_KEY}
    ports:
      - "4317:4317"  # gRPC
      - "4318:4318"  # HTTP
    volumes:
      - ./otel-config.yaml:/etc/otelcol-contrib/config.yaml
    command: ["--config=/etc/otelcol-contrib/config.yaml"]

  node-app:
    build: .
    container_name: node-otel-demo
    depends_on:
      - otelcollector
    ports:
      - "3000:3000"
    environment:
      - OTEL_EXPORTER_OTLP_ENDPOINT=http://otelcollector:4318
```

Deploy the services:

```bash
export FR_API_KEY=your-api-key-here
docker-compose up -d
```

## Step 7: Verify in FusionReactor Cloud

1. Generate some traffic:
   ```bash
   # Make several requests
   for i in {1..10}; do curl http://localhost:3000/fibonacci/$i; done
   ```

2. Log in to **FusionReactor Cloud**

3. Navigate to **Explore**:
   - **Traces**: Select `Resource Service Name = node-otel-demo`
   - **Metrics**: Search for `http_requests_total{job="node-otel-demo"}`
   - **Logs**: Filter by `job = node-otel-demo`

You should see:
- Trace spans for each HTTP request and Fibonacci calculation
- Metrics tracking request counts and durations
- Log entries from your console.log statements

## Next steps

* Add database instrumentation with `@opentelemetry/instrumentation-pg` or `@opentelemetry/instrumentation-mongodb`
* Instrument Redis with `@opentelemetry/instrumentation-redis`
* Add custom business metrics using the Metrics API
* Create [custom dashboards](/Getting-started/Tutorials/create-dashboard/) in FusionReactor Cloud
* Enable additional auto-instrumentations for your specific frameworks

!!! info "Learn more"
    [OpenTelemetry Node.js Documentation](https://opentelemetry.io/docs/languages/js/getting-started/nodejs/)

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.
