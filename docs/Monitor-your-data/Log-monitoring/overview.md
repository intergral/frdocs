# Overview

<iframe src="https://player.vimeo.com/video/838705595?h=6a3b1ea093" width="640" height="363" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

Logging in FusionReactor allows you to monitor logs from any location alongside your existing FusionReactor data.

## Getting started

To get started, simply upgrade to FusionReactor 9.0.0 or later and logs will ingest into your Cloud account automatically.

The FusionReactor agent will send application and error logs out of the box, with options to send traditional FusionReactor logs and scrape any additional logs on the server automatically.

If you currently have an on-premise license, you can convert to Cloud [here](https://www.fusion-reactor.com/switch).

## How to visualize your logs

Logs can be viewed within the Cloud from within [Log dashboards](/Cloud/guides/logging/) and via the [Explore](/frdocs/Data-insights/Features/explore/) feature.

### Preconfigured dashboards

[Log dashboards](/Cloud/guides/logging/) give you preconfigured, powerful views which you can use to analyze your log data with simple search capabilities, including:

- Dashboards to search and filter logs from sources such as ColdFusion, Application Server or FusionReactor logs
- Dashboards to track down the root cause of error logs
- Dashboards to Query and browse all ingested logs
- Dashboards to see how much data you are ingesting
- Dashboards to identify memory and CPU bottlenecks via logs

Currently, dashboards are read-only. The ability to create and edit dashboards will be added in a later edition of the FusionReactor Cloud.

### Exploring your logs
To deep dive into logs, you can use the [Explore](/frdocs/Data-insights/Features/explore/) feature to analyze logs using LogQL queries.

## Sending additional logs to the FusionReactor Cloud

Application and error logs will be shipped to the Cloud automatically, to give you high value logs automatically as soon as you upgrade.

These logs include:

- Exception logs
- ColdFusion logs
- Commandbox logs
- Tomcat Logs
- Lucee logs
- Stdout / Stderror logs

Additional logs can be sent either by using the agent as a log shipper, or using a dedicated log shipper such as Promtail, Logback, Log4j or any other log shipper.

### Sending additional logs from FusionReactor

FusionReactor logs will not be sent without additional configuration, as the metrics and transactions from the FusionReactor agent are already available in other views and dashboards.

You can send FusionReactor logs by enabling them in the logging [Cloud settings](/Logs/Cloud-Settings/).

The agent can also be utilized to ship any logs stored on the server using its [log scraping functionality](/Logs/Cloud-Settings/).

Any logs sent via the agent have the option to be:

- [Obfuscated](/frdocs/Data-insights/Features/Logs/Cloud-Log-Obfuscation-Rules/) to remove any sensitive content.
- [Rolled up](/frdocs/Data-insights/Features/Logs/Cloud-Log-MultiLine-Blocks/) to create more readable log formats.

### Sending logs from dedicated logging agents

You can ingest logs from other sources such as nginx, IIS, databases or any other service using a logging agent such as Promtail, Logback or Log4j.

In order to do this:

1. Configure an API key within your [FusionReactor Cloud account](https://app.fusionreactor.io/account/apikey)
2. Configure a logging agent to [ship logs to FusionReactor](/frdocs/Monitor-your-data/Log-monitoring/log-shipper/)

## Alerting on your log behavior
.
Log alerting allows you to create rules based on your log rates or metrics from within logs themselves to detect issues such as:

1. Log floods
2. Log error spikes
3. Abnormal log behavior

Log alerts can be dispatched to the same subscriptions used for alerting.

In order to do this:

1. Create a new alerting Group.
2. Create an alerting rule.

!!! info "Learn more"
    [Alerting](/frdocs/Monitor-your-data/Log-monitoring/alerting/) 

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.

