# How to view historical data 


There are several ways to view historical data in FusionReactor Cloud. Up to 13 months of your metric data is stored in Cloud, and up to 30 days of your trace data and log data.

## Servers

The Server view presents an overview of the servers running a FusionReactor agent inside your infrastructure. From inside this view, you can choose an overview of your servers or more detailed information about a subset of them. The Servers page is the only part of Cloud with live mode.

### Live mode, immediate and historic data

The Servers screen defaults to Live mode indicated by the orange clock. Live mode refers to data that is live streamed from an instance and is streamed in real-time. It is useful for viewing and resolving immediate issues.

Historic data is shown as stored traces,  which are powered by the time picker. 

!!! info
    To view historic data, simply toggle the Live mode clock.

Historic data can be filtered according to the default times, for example last hour, or you can customize your time frame according to your needs.

## Applications

The Applications list view on FusionReactor Cloud displays an overview of all your applications on servers running FusionReactor.

### Applications details

The application details screen is displayed when an application is selected.

The transaction list displays all the transactions associated with that application for the set timeframe as well as the selected tab in the filter bar.
Transactions can be filtered by selecting the relevant tab:

|Filter type       | Description     |
|--------------|-----------|
|Time taken | This displays the percentage of time the application running that transaction.|
|Average time | This shows the average time for each transaction, with a line displayed across all transactions showing the average for the entire application. The application average time is displayed below the transaction list.|
| Slowest | This displays the longest response time for each transaction, with the total of the longest times shown below the transactions list.|
|Throughput |This shows the number of requests for each transaction, with the total number of requests displayed below the transaction list.|
| Errors |This displays the number of errors for each transaction that has caused errors, with the total number of errors displayed below the transaction list.|

## Explore

Explore allows you to query and analyse all metrics, logs and traces ingested to your cloud account, here you can create new data views and filter data in any way you require.

### Datasource selection

Within Explore there are three datasource options. They are accessed using the dropdown located to the left of the screen. The default datasource is Metrics.

* Metrics will contain any metric sent from a FusionReactor agent, plus some additional metrics created within our ingest engine.

* Traces will contain any slow or error transactions sent from a FusionReactor agent, requests viewed in the recent or running tabs of the server view will not appear here as they are not ingested.

* Logs will contain any logs sent to FusionReactor, either from a FusionReactor agent or log shipper.

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.