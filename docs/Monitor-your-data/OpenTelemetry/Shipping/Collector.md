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

## Shipping OpenTelemetry data to FusionReactor Cloud

<iframe src="https://player.vimeo.com/video/816507894?h=7ba5f16a15" width="640" height="353" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
<p><a href="https://vimeo.com/816507894">Shipping OpenTelemetry data to FusionReactor Cloud</a> from <a href="https://vimeo.com/user109619720">FusionReactorAPM</a> on <a href="https://vimeo.com">Vimeo</a>.</p>



### **Step 1**: Create an otel-config.yaml file

For our OTel Collector we need to create an otel-config.yaml file. 

!!! tip
    Be careful with the indentation here as yaml syntax is very sensitive.

```yaml
receivers:
  otlp:


exporters:
  otlphttp:
    endpoint: "https://api.fusionreactor.io"
    compression: none
    headers:
      authorization: "<your api key>"
  prometheusremotewrite:
    endpoint: "https://api.fusionreactor.io/v1/metrics"
    headers:
      authorization: "<your api key>"



service:
  pipelines:
    metrics:
      receivers: [otlp]
      exporters: [prometheusremotewrite]
    traces:
      receivers: [otlp]
      exporters: [otlphttp]


```


The receivers section declares that all telemetry data will be sent to the OTel collector's receiver that is running on **otelcollector** port **4318**, using OpenTelemetry Protocol (OTLP) and HTTP format. 

!!! tip
    You can use gRPC instead of HTTP.

### **Step 2**: Configure OTLPHTTP and Prometheus remote_write

Next we configure our OTLPHTTP exporter for traces, and the Prometheus remote_write for metrics. The collector sends the metric and tracing data to the endpoints - the **FusionReactor Cloud** - at the address **api.fusionreactor.io**. 
 
### **Step 3**: Replace credentials with API key
 
Replace both **credentials** under **authorization** here with your own API key.

!!! tip
    To generate a new API key, go to **FusionReactor Cloud** > **Account Settings** > **API Keys** > **Generate**. Copy this key and paste it under **credentials**.

### **Step 4**: Services outlined and data shipped

Finally, in the services section is where we bring everything together. 

```yaml
  pipelines:
    metrics:
      receivers: [otlp]
      exporters: [prometheusremotewrite]
    traces:
      receivers: [otlp]
      exporters: [otlphttp]

```
The above example states that:

* Metrics and traces will be received by the OTLP receiver.

* Metrics are then exported via Prometheus remote_write.

* Traces are exported via the OTLPHTTP exporter.

All of the data is then shipped to the **FusionReactor Cloud**.


### **Step 5**: Create OTel Docker image

Use this config file to create an OTel Docker image and input the following: 


```
FROM otel/opentelemetry-collector
ADD otel-config.yaml /etc/otelcol/config.yaml

```

ADD otel-config.yaml /etc/otelcol/config.yaml


### **Step 6**: Create docker-compose.yml file


Create a docker-compose.yml file with the following to start your Go App and your OTel Collector.

```
services:
  gooteldemo:
    image: gooteldemo
    environment:
      - OTEL_SERVICE_NAME=gooteldemo
      - OTEL_RESOURCE_ATTRIBUTES="application=gooteldemo"

  #otel
  otelcollector:
    image: gootelcollector
    ports:
      - "4318:4318"
      - "8888:8888"
```

### **Step 7**: Run “docker-compose up”

Run “docker-compose up” in the terminal to bring up your containers, starting my Go App and Telemetry collection. 

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.


!!! info "Learn more"
    [OpenTelemetry Collector](https://opentelemetry.io/docs/collector/getting-started/)