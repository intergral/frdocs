

Setting up OpenTelemetry to ingest data into the FusionReactor Cloud with PHP is a straightforward process that can be completed in just a few minutes. This setup enhances your visibility into your application's performance and the metrics it generates, enabling rapid diagnosis and resolution of issues.

The following step-by-step guide shows how to configure OpenTelemetry to send data to the FusionReactor Cloud using Docker and a simple PHP application. This guide is based on the OpenTelemetry [PHP GitHub](https://github.com/open-telemetry/opentelemetry-php) project.

## Procedure

### **Step 1**: Instrument OpenTelemetry in your PHP application

Begin by integrating OpenTelemetry into your PHP application. This process involves adding the necessary libraries and setting up the instrumentation to collect trace and metric data from your application.

!!! info "Learn more"
    [OpenTelemetry PHP Instrumentation](https://opentelemetry.io/docs/languages/php/)

### **Step 2**: Set up an Exporter

Once your application is instrumented, you need to set up an exporter to send the collected telemetry data to the FusionReactor Cloud. The OTLP exporter is recommended for this purpose.

!!! info "Learn more"
    [OpenTelemetry PHP Exporters](https://opentelemetry.io/docs/languages/php/exporters/)

### **Step 3**: Include the OpenTelemetry Agent in Docker Compose

If you are deploying your PHP application using Docker, ensure you include the OpenTelemetry agent in your `docker-compose.yml` file. This agent will handle the collection and transmission of telemetry data from your application to the FusionReactor Cloud.

!!! info "Learn more"
    [Docker Observability Agent Installation](/frdocs/Monitor-your-data/Observability-agent/Installation/Docker/)

### **Step 4**: Build the `otel-config.yaml` file

To finalize the setup, create the `otel-config.yaml` file. This file contains the configuration needed for the OpenTelemetry agent to function correctly, including details about the exporter and the telemetry data to collect.

!!! info "Learn more"
    [Create an `otel-config.yaml` File](/frdocs/Monitor-your-data/OpenTelemetry/Shipping/Collector/#step-1-create-an-otel-configyaml-file)

By following these steps, you'll successfully set up OpenTelemetry for your PHP application, enabling seamless data ingestion into the FusionReactor Cloud.

