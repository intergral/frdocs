

# FusionReactor Agent Metrics

The **FusionReactor Agent Metrics** page provides a comprehensive reference for all metrics collected by the FusionReactor agent across application, JVM, request, and cloud infrastructure layers. These metrics are essential for performance monitoring, alerting, and anomaly detection in both traditional and cloud-native environments.

Metrics are grouped into categories based on the type of data they represent (e.g., CPU, memory, disk, transactions), and each entry includes a description and unit of measurement. Many of these metrics are designed to support real-time observability and are commonly used to configure alerts and build custom dashboards.


Use this reference to:

* Understand what each metric represents
* Identify which metrics are alertable
* Configure meaningful dashboards and threshold-based alerts


## Service uptime and Instance info

| Name                         | Description                          | Unit | 
| ---------------------------- | ---------------------------- | ---- |
| up                           | Indicates the instance is up. |      |      
| fusionreactor\_build\_info   | FusionReactor build info.    |      |        
| fr\_server\_info             | FusionReactor server info.   |      |      
| fusionreactor\_license\_info | FusionReactor license info.  |      |     
| fr\_cf\_hitcounts\_total     | ColdFusion hit count.        |      |            

## CPU usage

| Metric Name                     | Description                                                  | Unit |
| ------------------------------- | ------------------------------------------------------------ | ---- |
| app\_cpu                        | Per-application total CPU time over the past minute         | ms   |
| process\_cpu\_usage             | CPU utilization (%) of the instance across all cores         | %    |
| process\_cpu\_total\_usage      | Total CPU utilization (%) across all cores and all processes | %    |
| fr\_system\_cpu\_seconds\_total | Cumulative CPU seconds by system, per-CPU-category           | s    |


## Memory usage

| Metric Name                            | Description                       | Unit  |
| -------------------------------------- | --------------------------------- | ----- |
| app\_memory                            | Avg. per-application memory usage | bytes |           
| jvm\_memory\_pool\_bytes\_committed    | Committed memory per memory pool  | MiB   |
| jvm\_memory\_pool\_bytes\_max          | Maximum memory per memory pool    | MiB   |
| jvm\_memory\_pool\_bytes\_used         | Used memory per memory pool       | MiB   |
| jvm\_memory\_pool\_bytes\_total        | Total memory pool size            | MiB   |
| jvm\_memory\_bytes\_committed          | Committed memory                  | MiB   |
| jvm\_memory\_bytes\_max                | Maximum available memory          | MiB   |
| jvm\_memory\_bytes\_used               | Used memory                       | MiB   |
| jvm\_memory\_bytes\_used\_percent      | Percentage of memory used         | %     |
| jvm\_memory\_bytes\_committed\_percent | Percentage of memory committed    | %     |

## Thread & Class activity

| Metric Name                 | Description                            | Unit |
| --------------------------- | -------------------------------------- | ---- |
| jvm\_threads\_current       | Number of live JVM threads             |      |
| jvm\_threads\_state         | JVM threads by state                   |      |
| jvm\_classes\_loaded        | Count of classes loaded in the JVM     |      |
| jvm\_classes\_unloaded      | Count of classes unloaded from the JVM |      |
| jvm\_classes\_loaded\_total | Cumulative total of loaded classes     |      |

## Web Requests

| Metric Name                    | Description                               | Unit |
| ------------------------------ | ----------------------------------------- | ---- |
| app\_WebRequest                | Avg. duration of WebRequest transactions  | ms   |
| app\_WebRequest\_cnt           | Count of WebRequest transactions          |      |
| app\_WebRequest\_sum           | Total duration of WebRequest transactions | ms   |
| app\_client\_error\_count      | Avg. duration of 4xx WebRequest errors    | ms   |
| app\_client\_error\_count\_cnt | Count of 4xx WebRequest errors            |      |
| app\_client\_error\_count\_sum | Total duration of 4xx WebRequest errors   | ms   |
| app\_server\_error\_count      | Avg. duration of 5xx WebRequest errors    | ms   |
| app\_server\_error\_count\_cnt | Count of 5xx WebRequest errors            |      |
| app\_server\_error\_count\_sum | Total duration of 5xx WebRequest errors   | ms   |
 

##  Errors & Exceptions

| Metric Name                 | Description                                         | Unit |
| --------------------------- | --------------------------------------------------- | ---- |
| app\_error\_count           | Total application-level errors over the last minute |      |
| app\_error\_count\_cnt      | Error count                                         |      |
| app\_error\_count\_sum      | Error duration sum                                  |      |
| app\_txn\_error\_count      | Total transaction errors over the last minute       |      |
| app\_txn\_error\_count\_cnt | Transaction error count                             |      |
| app\_txn\_error\_count\_sum | Total transaction error duration                    |      |

 	
## Disk & Filesystem

| Metric Name                         | Description                                      | Unit |
| ----------------------------------- | ------------------------------------------------ | ---- |
| fr\_filesystem\_transmitted\_bytes  | Data transmitted since boot (per network device) | B    |
| fr\_filesystem\_received\_bytes     | Data received since boot (per network device)    | B    |
| fr\_filesystem\_read\_bytes\_total  | Total disk read since boot                       | B    |
| fr\_filesystem\_write\_bytes\_total | Total disk write since boot                      | B    |
| fr\_filesystem\_avail\_bytes        | Available disk space                             | B    |
| fr\_filesystem\_total\_bytes        | Total disk space                                 | B    |
| fr\_filesystem\_used\_bytes         | Used disk space                                  | B    |

