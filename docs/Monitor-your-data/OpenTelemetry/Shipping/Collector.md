# OpenTelemetry Collector

The OpenTelemetry (OTel) Collector is a high-performance, vendor-agnostic proxy that receives, processes, and exports telemetry data. It acts as the central hub of your observability pipeline, allowing you to aggregate data from multiple services before securely shipping it to FusionReactor Cloud.

### Key Components

* **Receivers**: Ingest data from your applications via the OTLP protocol (gRPC or HTTP).
* **Processors**: Refine and transform data through batching, filtering, and resource limiting for efficiency and stability.
* **Exporters**: Send processed telemetry to FusionReactor Cloud via OTLP/HTTP.

## Shipping Telemetry to FusionReactor Cloud

The recommended approach is to use a **Unified OTLP Pipeline**. This allows you to send Traces, Metrics, and Logs through a single, efficient exporter.

### Prerequisites

* A FusionReactor Cloud account.
* Docker Desktop installed on your machine.



### **Step 1:** Create `otel-config.yaml`

Create a configuration file to define how the Collector should handle your data.

!!! tip "Security First"
    We recommend using environment variables (such as `${FR_API_KEY}`) to keep your credentials secure and out of your source code.

```yaml
receivers:
  otlp:
    protocols:
      grpc:
        endpoint: "0.0.0.0:4317"
      http:
        endpoint: "0.0.0.0:4318"

processors:
  batch: {}
  memory_limiter:
    check_interval: 1s
    limit_percentage: 75
    spike_limit_percentage: 15

exporters:
  otlphttp/fusionreactor:
    endpoint: "https://api.fusionreactor.io"
    headers:
      authorization: "${FR_API_KEY}"

service:
  pipelines:
    traces:
      receivers: [otlp]
      processors: [memory_limiter, batch]
      exporters: [otlphttp/fusionreactor]
    metrics:
      receivers: [otlp]
      processors: [memory_limiter, batch]
      exporters: [otlphttp/fusionreactor]
    logs:
      receivers: [otlp]
      processors: [memory_limiter, batch]
      exporters: [otlphttp/fusionreactor]
```

!!! info "The Memory Limiter: Your Safety Switch"
    The `memory_limiter` processor prevents the Collector from crashing during sudden data spikes. It monitors memory usage every second and ensures the service stays within a safe 75% limit.



### **Step 2:** Obtain your API Key

1. Log in to **FusionReactor Cloud**.
2. Navigate to **Account Settings > API Keys**.
3. Generate a new key and save it securely.



### **Step 3:** Deploy with Docker

The most reliable way to run the Collector is using the **official contrib distribution**, which includes advanced processors for cloud and containerized environments.

**Create a `docker-compose.yml`:**

```yaml
services:
  otel-collector:
    image: otel/opentelemetry-collector-contrib:latest
    container_name: fusionreactor-collector
    restart: unless-stopped
    environment:
      - FR_API_KEY=${FR_API_KEY}  # Set this in your environment or .env file
    ports:
      - "4317:4317" # gRPC Receiver
      - "4318:4318" # HTTP Receiver
    volumes:
      - ./otel-config.yaml:/etc/otelcol-contrib/config.yaml
    command: ["--config=/etc/otelcol-contrib/config.yaml"]

```


### **Step 4:** Launch and Verify

1. **Run the Collector**:
```bash
docker-compose up -d

```


2. **Verify Data Flow**:
Check the logs to ensure everything is running smoothly:
```bash
docker logs -f fusionreactor-collector

```



Once the log says `Everything is ready`, your applications can point their OTLP exporters to `localhost:4317` (gRPC) or `localhost:4318` (HTTP).


### **Step 5**: Verify the Connection

Before connecting your actual applications, you can verify that your pipeline is working by sending a synthetic "test trace" using the **telemetrygen** utility.

1. **Run the Test Command**:
Open a terminal and run the following command to send 100 test traces to your local collector:
```bash
docker run --network host ghcr.io/open-telemetry/opentelemetry-collector-contrib/telemetrygen:latest traces --traces 100 --otlp-endpoint localhost:4317 --otlp-insecure

```


2. **Check FusionReactor Cloud**:
* Log in to your **FusionReactor Cloud** dashboard.
* Navigate to **Explore > Traces**.
* You should see a service named **`telemetrygen`** appearing shortly.




!!! info "Learn more"
    [OpenTelemetry Collector Documentation](https://opentelemetry.io/docs/collector/getting-started/)