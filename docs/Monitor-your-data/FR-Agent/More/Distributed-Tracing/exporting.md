# Exporting/shipping spans
When spans end they are added to a First-In-First-Out (FIFO) queue and exported/shipped as a batch after an interval of time (default 5 seconds).

When it is time to export/ship the spans, they are collected from the queue, converted into the [OpenTelemetry protobuf](https://github.com/open-telemetry/opentelemetry-proto/blob/bacfe08d84e21fb2a779e302d12e8dfeb67e7b86/opentelemetry/proto/trace/v1/trace.proto) format and shipped as an HTTP request.

If an export request fails with a 3xx or a 5xx response code, the HTTP request is added to a FIFO retry queue with an increasing backoff.

!!! note "Possible cause of missing spans"
    Spans missing from traces could be due to them being removed from the queue once it has reached max capacity.

!!! note "ITTs stored in a separate queue"
    ITTs are stored in a separate queue to prevent them being removed by less interesting transactions.

## Exporting formats supported by FusionReactor
- [OpenTelemetry Protobuf](https://github.com/open-telemetry/opentelemetry-proto/blob/bacfe08d84e21fb2a779e302d12e8dfeb67e7b86/opentelemetry/proto/trace/v1/trace.proto)
