# C++ 

This guide showcases the integration of OpenTelemetry into your C++ application within FusionReactor, allowing for tracing, metrics, and preparation for future logging capabilities once available.

## Procedure

**Step 1**: Set up OpenTelemetry

Adjust the CMake build configuration in the `CMakeLists.txt` file for OpenTelemetry in FusionReactor:

```
find_package(CURL REQUIRED)
find_package(Protobuf REQUIRED)
find_package(opentelemetry-cpp CONFIG REQUIRED)

include_directories("${OPENTELEMETRY_CPP_INCLUDE_DIRS}")

target_link_libraries(
    <YOUR_EXE_NAME> ${OPENTELEMETRY_CPP_LIBRARIES}
    opentelemetry_trace
    opentelemetry_common
    opentelemetry_http_client_curl
    opentelemetry_exporter_otlp_http
    opentelemetry_exporter_otlp_http_client
    opentelemetry_otlp_recordable
    opentelemetry_resources
    opentelemetry_metrics
    opentelemetry_exporter_otlp_http_metric
)
```

Create a file named `otel.h` in your application directory and save the provided content.

**Step 2**: Instrument your application

Add the necessary header files: Include otel.h in your code files for OpenTelemetry functionality.


```bash
#include "otel.h"
```

Initialize OpenTelemetry: Call the `initOpenTelemetry()`` function early in your application's startup code.

### Add tracing

```bash
// Obtain a reference to the tracer provider
auto provider = opentelemetry::trace::Provider::GetTracerProvider();

// Get a tracer object
auto tracer = provider->GetTracer("my-tracer");

// Start a new span
auto span = tracer->StartSpan("Call to /myendpoint", {
    { "http.method", "GET" },
    { "net.protocol.version", "1.1" }
  }, options);

// Your code logic here

// End the span
span->End();
```


### Collect metrics

```bash
// Obtain a reference to the meter provider
auto provider = metrics_api::Provider::GetMeterProvider();

// Get a meter object
auto meter = provider->GetMeter("my-meter", "1.0.1");

// Create instruments like a counter
auto request_counter = meter->CreateUInt64Counter("request_counter");

// Record values with the counter and save additional attributes
request_counter.Add(1, labelkv);
```


### Connect logs
OpenTelemetry logging is still under development and not yet available for C++ in FusionReactor.

!!! info "Learn more"
    [OpenTelemetry](https://opentelemetry.io/docs/instrumentation/cpp/)



___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.