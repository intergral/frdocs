# Logging

Log dashboards and events allow you to visualize your ingested log data.

Some views are specifically designed to work with FusionReactor agent logs, others are designed to view log data ingested from any logging agent.

!!! note
    At this time there is no capability for you to edit or create new dashboards, this is something we will be adding at a later date.

## Central Log Dashboard

The central log dashboard contains links to all log dashboards and can be used to quickly navigate between logging views.

![](../../images/Logs/CentralDashboard.png)

Log dashboards will be added and improved over time. 
This will include adding new categories of dashboards, new log views and new filters to gain insight and value from your logs.

From this dashboard, you can navigate into any log dashboard, then return to the central dashboard using the link on the top right.

## Log Events Dashboard

The log events Dashboard allows you to quickly browse your logs, by filtering by log source and searching for any text within logs.

![](../../images/Logs/events.png)

Within the dashboard you can view the rate of logs, as well as the log lines themselves.

Log filters operate on the job label.

The job label is automatically be applied to [logs shipped by FusionReactor](/Cloud/logs/FusionReactor-Agent-Shipper) and set to the instance name.

Logs shipped via an [External Log Shipper](/Cloud/logs/Log-Shipper) must have a job label specified to allow for log filters to function.

Search text allows you to search for any log line content from within your ingested logs, for example:

- error
- exception
- java.lang.NullPointerException

## Dashboard Index

**Application Server Logs** - Browse logs captured in FusionReactor generated from your application server, including:

- ColdFusion logs
- Tomcat logs
- Lucee logs
- CommandBox logs
- Stdout and Stderror logs
- Exception logs

**ColdFusion Logs** - Browse logs captured in FusionReactor generated from your ColdFusion server.

**FusionReactor logs** - Browse all logs captured in FusionReactor, including metric, transaction and support logs if enabled.

**Log Browser** - Browse and search all logs ingested into FusionReactor.

**Log Errors** - Browse error logs ingested into FusionReactor.

**Log Status** - Observe the rate of change in logging rates per service, filtered on log level, exceptions or all logs.

**Log Usage** - Observe how much log data you are ingesting a 30-day period, broken down per hour and per day.

**Resource and Logs** - Examine your FusionReactor log data with the context of your instance CPU and Memory usage. Used to investigate resource usage spikes within your deployments.
