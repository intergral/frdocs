# Getting started with OpenTelemetry

## What is OpenTelemetry?

OpenTelemetry (OTel) is an industry-standard, open-source observability framework designed to create and manage telemetry data—**Metrics, Traces, and Logs**. It provides a unified set of APIs and libraries that allow you to instrument your applications once and send the data to any backend, such as FusionReactor Cloud.

By adopting OpenTelemetry, you avoid vendor lock-in and gain deep visibility into the performance and health of your distributed systems.

### Three steps to seamless integration

FusionReactor has simplified the OTel integration process into three straightforward steps:

1. **[Instrument code](/Monitor-your-data/OpenTelemetry/Instrumentation/Overview/)**: Add OTel to your application (automatically or manually).
2. **[Ship data to FR Cloud](/Monitor-your-data/OpenTelemetry/Shipping/overview/)**: Configure your data flow.
3. **[Visualize data](/Monitor-your-data/OpenTelemetry/Visualize/Metrics/)**: Analyze your performance in the FusionReactor dashboard.

---

## Core concepts & components

### The signals: Traces, Metrics, and Logs

* **Traces:** Provide a complete map of a request as it moves through your services. They help identify bottlenecks and "hotspots" in your code. FusionReactor uses these to power **Distributed Tracing** visualizations.
* **Metrics:** Numerical data points (such as CPU usage, request rates) used for monitoring trends and setting alerts.
* **Logs:** Structured or unstructured text records that provide context to your traces and metrics, now fully integrated into the OTel standard.

### OTLP (OpenTelemetry Protocol)

OTLP is the standardized language that OpenTelemetry components use to communicate.

!!! note
    FusionReactor Cloud is built on OTLP, ensuring high-performance data ingestion and compatibility with the entire OTel ecosystem.

### Instrumentation

Instrumentation is how your application generates telemetry. Over the last two years, **Zero-code injection** (Automatic Instrumentation) has become the standard for most languages (Java, Python, .NET, Go, etc.), allowing you to gather data without changing a single line of your source code.

---

## Shipping telemetry data to FusionReactor Cloud

To send data to FusionReactor, you can choose the method that best fits your infrastructure:

* **[OpenTelemetry Collector](/Monitor-your-data/OpenTelemetry/Shipping/Collector/)**: The recommended approach for production. A standalone service that receives, processes, and exports data. It acts as a central hub, offloading telemetry processing from your applications.

* **[Grafana Agent / Alloy](/Monitor-your-data/OpenTelemetry/Shipping/Grafana-agent/)**: A lightweight telemetry collector compatible with OTel and Prometheus ecosystems.

### Why use the OpenTelemetry Collector?

The Collector is the 'Swiss Army Knife' of observability. It allows you to:

* **Aggregate** data from multiple services.
* **Scrub** sensitive data (PII) before it leaves your network.
* **Batch** data to reduce network overhead and improve performance.

---

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.

!!! info "Learn more"
    [Official OpenTelemetry Documentation](https://opentelemetry.io/docs/)
