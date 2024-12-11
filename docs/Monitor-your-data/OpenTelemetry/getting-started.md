# Getting started

## What is OpenTelemetry?

OpenTelemetry is an open-source observability framework that aims to make it easier to instrument, generate, collect, and export telemetry data from software applications and systems. It provides a set of standard APIs, libraries, and agents that can be used to collect and transmit telemetry data, including metrics, traces, and logs, from different types of sources and across different environments.

<iframe src="https://player.vimeo.com/video/838704264?h=36eb02f737" width="640" height="363" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

OpenTelemetry, with its robust capabilities for distributed tracing and telemetry data collection, is a powerful tool for gaining insights into the intricacies of your applications. However, the sheer depth and complexity of OTel's features can present a challenge for users looking to implement effective monitoring. Recognizing the challenges associated with OpenTelemetry integration, FusionReactor has taken a proactive approach to simplify the process. Our goal is to empower users to harness the benefits of OTel without grappling with its inherent complexity.

### Three steps to seamless integration:
FusionReactor has distilled the OTel integration process into three straightforward steps, making it accessible for users at all levels:

Step 1: [Instrument code]()

Step 2: [Ship data to FR Cloud]()

Step 3: [Visualize data]() 



!!! info "Learn more"
    [What is OpenTelemetry?](https://opentelemetry.io/docs/concepts/what-is-opentelemetry/)



## Core concepts, components & functional elements

This section provides an insight into fundamental OpenTelemetry concepts, components, and foundational elements, and explains their functional scope and interplay.


### Metrics

Metrics provide ongoing visibility into numerical and statistical data points related to the performance of your applications and services.

As an illustration, metrics can reveal information like the CPU utilization of a machine or the count of concurrent users at a specific time.


### Traces

Traces furnish a comprehensive examination of the execution flow within your services, offering insights into function hotspots, execution times, and the identification of warnings or errors embedded in your code.

For instance, when instrumenting a typical web application, each request can be mapped to an individual trace object containing multiple child span objects. Each span may represent distinct aspects of your business logic, such as HTTP operations, database queries, and more.

#### Distributed tracing

FusionReactor is now able to provide distributed trace information which is captured and displayed in a graphical format, so you can visualize the entire request flow and quickly identify any issues or bottlenecks.  

!!! info "Learn more"
    [Distributed tracing](/frdocs/Monitor-your-data/OpenTelemetry/Visualize/Distributed-tracing/)


### Logs

Logs serve as OpenTelemetry's approach to traditional log information, facilitating the centralized storage, aggregation, correlation, and analysis of log files and sources.



### OTLP

OTLP (OpenTelemetry Protocol) acts as the standardized exchange format utilized by OpenTelemetry-supported components to communicate with one another. It specifies message structures and protocol details for the network layer.

!!! note
    FusionReactor only supports OTLP


### Instrumentation

Instrumentation is the process of extending your application to generate, collect, and publish telemetry data. The level of automation in this process may vary based on the language and platform, ranging from fully automatic to requiring code modifications for telemetry collection.



!!! info “Learn more”
    [Instrumentation](/frdocs/Monitor-your-data/OpenTelemetry/Instrumentation/Overview//)

### Shipping telemetry data to FusionReactor Cloud

There are 3 ways to send data to FusionReactor Cloud:

* [OTel collector](/frdocs/Monitor-your-data/OpenTelemetry/Shipping/Collector/)

* [Observability Agent](/frdocs/Monitor-your-data/OpenTelemetry/Shipping/Observability-agent/)

* [Grafana Agent](/frdocs/Monitor-your-data/OpenTelemetry/Shipping/Grafana-agent/)

!!! info "Learn more"
    [Sending data to FR Cloud](/frdocs/Monitor-your-data/OpenTelemetry/Shipping/overview/)


### OpenTelemetry collector

The OpenTelemetry Collector is one of the key components of the OpenTelemetry framework, which is responsible for collecting telemetry data from various sources, processing and transforming it, and exporting it to different backends.

The OpenTelemetry Collector is designed to be highly flexible and extensible, allowing you to configure it to collect telemetry data from a wide range of sources, including distributed tracing systems, metrics systems, and logging frameworks. The collector can also perform transformations and enrichments on the collected data, such as adding contextual information, aggregating metrics, and filtering traces based on various criteria.
















___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.