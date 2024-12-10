# OpenTelemetry Collector

## What is the OpenTelemetry Collector

The OpenTelemetry Collector manages the reception, processing, and export of telemetry data, serving as a central hub for efficient data flow between instrumented applications and designated backends.

Here is a common setup which includes receivers, processors and exporters: 

![!Screenshot](/frdocs/Monitor-your-data/OpenTelemetry/images/Otelcollector.png)

The setup operates as a structured pipeline with key components in the OpenTelemetry Collector.

### Receivers
The initial stage involves Receivers, which can handle data in various protocols such as Prometheus (for time series data), Jaeger (for distributed tracing of user requests), and OTLP. 

### Processors
In the middle of the pipeline are the processors, responsible for manipulating and enriching data before exporting it to the destination. With 25 processors currently available, functionalities include batch (for data compression), memory_limiter (for memory management), filtering (to remove unnecessary logs), resource detection (for obtaining information from the host), and Kubernetes attributes processing (for automatically discovering and extracting metadata from Kubernetes resources). A combination of transform and attributes processors is employed for redacting sensitive data.

### Exporters
At the final stage, exporters come into play, tasked with sending data to specific backends. With almost 50 exporters available, the choice often depends on your backend requirements. 


!!! info "Learn more"
    [OpenTelemetry Collector](https://opentelemetry.io/docs/collector/getting-started/)