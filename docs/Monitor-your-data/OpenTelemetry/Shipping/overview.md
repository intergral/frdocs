# Shipping OpenTelemetry data to FusionReactor Cloud

Shipping OpenTelemetry (OTel) data to FusionReactor Cloud centralizes your observability and enables OpsPilot AI analysis, faster troubleshooting, and cross-tier performance optimization. Using a vendor-agnostic OTLP pipeline ensures your monitoring remains flexible and future-proof.

To send your telemetry data to FusionReactor Cloud, you'll need a component that receives data from your instrumented applications and forwards it via OTLP. There are two recommended options:


### 1. [OpenTelemetry Collector](/Monitor-your-data/OpenTelemetry/Shipping/Collector/)

The industry-standard, vendor-neutral service for receiving, processing, and exporting telemetry. Recommended for pure OTel environments and complex data transformation needs.

### 2. [Grafana Alloy](/Monitor-your-data/OpenTelemetry/Shipping/Grafana-agent/)

A comprehensive distribution from Grafana Labs that extends beyond OpenTelemetry. It is fully OTLP-compatible but adds advanced features for users who also utilize Prometheus, Loki, or the wider Grafana ecosystem.



!!! tip "Which should I choose?"
    If you want a **pure, vendor-neutral** setup, choose the **OTel Collector**. If you require **advanced routing** or deep integration with existing Grafana-based tools, choose **Grafana Alloy**.

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.

