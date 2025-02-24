# Instrumenting OpenTelemetry

OpenTelemetry enables tracing, metrics, and logging telemetry through a set of single-distribution multi-language libraries and tools that allow for a plug-and-play telemetry architecture that includes the concept of agents and collectors.

Instrumentation is the process of extending your application to create, collect, and publish telemetry data. Depending on the language used and platform, this can be fully automatic or may require changes made to your code to include telemetry collection.

Setting up OpenTelemetry to ingest data into the FusionReactor Cloud is a simple procedure that will only take a few minutes. It provides additional insight into your product and the metrics it produces, so you can quickly investigate and pinpoint issues.

To begin analyzing and monitoring your OpenTelemetry data with FusionReactor, you first need to set up data ingestion. To achieve this you must explicitly export with OTLP to FusionReactor.

FusionReactor provides step-by-step guides for the following languages: 

* [C++](/frdocs/Monitor-your-data/OpenTelemetry/Instrumentation/Cpp/)
* [Go](/frdocs/Monitor-your-data/OpenTelemetry/Instrumentation/Go/)
* [Node.js](/frdocs/Monitor-your-data/OpenTelemetry/Instrumentation/node/)
* [PHP](/frdocs/Monitor-your-data/OpenTelemetry/Instrumentation/PHP/)
* [Python](/frdocs/Monitor-your-data/OpenTelemetry/Instrumentation/Python/)

!!! info
    More guides will continue to be added over time.
