# Shipping OpenTelemetry data to FusionReactor Cloud

Shipping OpenTelemetry (OTel) data to FusionReactor Cloud centralizes your observability, enabling OpsPilot AI analysis, faster troubleshooting, and cross-tier performance optimization. By using a vendor-agnostic OTLP pipeline, you ensure your monitoring remains flexible and future-proof.

There are two recommended ways to collect and forward your telemetry data to FusionReactor Cloud:


### 1. [OpenTelemetry Collector](/Monitor-your-data/OpenTelemetry/Shipping/Collector/)

The industry-standard, vendor-neutral service for receiving, processing, and exporting telemetry. It is the best choice for pure OTel environments and complex data transformation needs.

### 2. [Grafana Alloy](/Monitor-your-data/OpenTelemetry/Shipping/Grafana-agent/)

The "big tent" distribution from Grafana Labs. It is fully OTLP-compatible but adds advanced features for users who also utilize Prometheus, Loki, or the wider Grafana ecosystem.



!!! tip "Which should I choose?"
    If you want a **pure, vendor-neutral** setup, go with the **OTel Collector**. If you require **advanced routing** or deep integration with existing Grafana-based tools, **Grafana Alloy** is the preferred choice.

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.

