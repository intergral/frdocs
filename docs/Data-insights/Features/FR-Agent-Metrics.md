

# FusionReactor Agent Metrics

The **FusionReactor Agent Metrics** page provides a comprehensive reference for all metrics collected by the FusionReactor agent across application, JVM, request, and cloud infrastructure layers. These metrics are essential for performance monitoring, alerting, and anomaly detection in both traditional and cloud-native environments.

Metrics are grouped into categories based on the type of data they represent (e.g., CPU, memory, disk, transactions), and each entry includes a description and unit of measurement. Many of these metrics are designed to support real-time observability and are commonly used to configure alerts and build custom dashboards.


Use this reference to:

* Understand what each metric represents
* Identify which metrics are alertable
* Configure meaningful dashboards and threshold-based alerts

## Metrics
### Service uptime & Instance info

| Name                         | Description                       | Unit | Labels |
| ---------------------------- | ---------------------------- | ---- |---- |
| up                           | Indicates the instance is up. |    |   [Labels](/Data-insights/Features/FR-Agent-Metrics/#up) |
| fusionreactor\_build\_info   | FusionReactor build info.    |     |  [Labels](/Data-insights/Features/FR-Agent-Metrics/#fusionreactor_build_info)    | 
| fr\_server\_info             | FusionReactor server info.   |     |  [Labels](fr_server_info) |
| fusionreactor\_license\_info | FusionReactor license info.  |     | [Labels](/Data-insights/Features/FR-Agent-Metrics/#fusionreactor_license_info)   |
          

### CPU usage

| Metric Name                     | Description                                                  | Unit |Labels |
| ------------------------------- | ------------------------------------------------------------ | ---- |---- |
| process\_cpu\_usage             | CPU utilization (%) of the instance across all cores         | %    |  Default |
| process\_cpu\_total\_usage      | Total CPU utilization (%) across all cores and all processes | %    |  Default   |



### Memory usage

| Metric Name                            | Description                       | Unit  |Labels |
| -------------------------------------- | --------------------------------- | ----- |        |
| jvm\_memory\_pool\_bytes\_committed    | Committed memory per memory pool  | MiB   | [Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_memory_pool_bytes_committed-jvm_memory_pool_bytes_used-jvm_memory_pool_bytes_max) |
| jvm\_memory\_pool\_bytes\_max          | Maximum memory per memory pool    | MiB   | [Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_memory_pool_bytes_committed-jvm_memory_pool_bytes_used-jvm_memory_pool_bytes_max) |
| jvm\_memory\_pool\_bytes\_used         | Used memory per memory pool       | MiB   |[Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_memory_pool_bytes_committed-jvm_memory_pool_bytes_used-jvm_memory_pool_bytes_max) |
| jvm\_memory\_pool\_bytes\_total        | Total memory pool size            | MiB   | [Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_memory_pool_bytes_committed-jvm_memory_pool_bytes_used-jvm_memory_pool_bytes_max) |
| jvm\_memory\_bytes\_committed          | Committed memory                  | MiB   | [Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_memory_bytes_used-jvm_memory_bytes_committed-jvm_memory_bytes_ma-jvm_memory_bytes_used_percentage-jvm_memory_bytes_committed_percentage) |
| jvm\_memory\_bytes\_max                | Maximum available memory          | MiB   | [Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_memory_bytes_used-jvm_memory_bytes_committed-jvm_memory_bytes_ma-jvm_memory_bytes_used_percentage-jvm_memory_bytes_committed_percentage) |
| jvm\_memory\_bytes\_used               | Used memory                       | MiB   | [Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_memory_bytes_used-jvm_memory_bytes_committed-jvm_memory_bytes_ma-jvm_memory_bytes_used_percentage-jvm_memory_bytes_committed_percentage) |
| jvm\_memory\_bytes\_used\_percent      | Percentage of memory used         | %     | [Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_memory_bytes_used-jvm_memory_bytes_committed-jvm_memory_bytes_ma-jvm_memory_bytes_used_percentage-jvm_memory_bytes_committed_percentage) |
| jvm\_memory\_bytes\_committed\_percent | Percentage of memory committed    | %     | [Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_memory_bytes_used-jvm_memory_bytes_committed-jvm_memory_bytes_ma-jvm_memory_bytes_used_percentage-jvm_memory_bytes_committed_percentage) |
| jvm\_gc\_collection\_seconds | Time spent in GC, per GC type         | ms/s | [Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_gc_collection_seconds-jvm_gc_collection_calls) |
| jvm\_gc\_collection\_calls   | Number of GC invocations, per GC type | GC/s | [Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_gc_collection_seconds-jvm_gc_collection_calls) |

### Thread & Class activity

| Metric Name                 | Description                            | Unit |Labels |
| --------------------------- | -------------------------------------- | ---- |  ---- |
| jvm\_threads\_current       | Number of live JVM threads             |      |  [Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_gc_collection_seconds-jvm_gc_collection_calls)   |
| jvm\_threads\_state         | JVM threads by state                   |      |[Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_gc_collection_seconds-jvm_gc_collection_calls) |
| jvm\_classes\_loaded        | Count of classes loaded in the JVM     |      | [Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_gc_collection_seconds-jvm_gc_collection_calls) |
| jvm\_classes\_unloaded      | Count of classes unloaded from the JVM |      |[Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_gc_collection_seconds-jvm_gc_collection_calls)|
| jvm\_classes\_loaded\_total | Cumulative total of loaded classes     |      | [Labels](/Data-insights/Features/FR-Agent-Metrics/#jvm_gc_collection_seconds-jvm_gc_collection_calls)|

### Application


| Metric Name                    | Description                                                                                | Labels | Unit  |
| ------------------------------ | ------------------------------------------------------------------------------------------ | ------ | ----- |
| app\_database\_throughput      | Per-application average duration (ms) of database transactions over the past minute.       | labels | ms    |
| app\_database\_throughput\_cnt | Per-application count of database transactions over the past minute.                       | labels |       |
| app\_database\_throughput\_sum | The application's total database transaction duration (in ms) for the last minute.         | labels | ms    |
| app\_database\_error           | Per-application average duration (ms) of database error transactions over the past minute. | labels | ms    |
| app\_database\_error\_cnt      | Per-application count of database error transactions over the past minute.                 | labels |       |
| app\_database\_error\_sum      | Per-application total duration (ms) of database error transactions over the past minute.   | labels | ms    |
| app\_cpu                       | Per-application total CPU time (ms) over the past minute.                                  | labels | ms    |
| app\_cpu\_cnt                  | Per-application total CPU time (ms) over the past minute. (Count)                          | labels |       |
| app\_cpu\_sum                  | Per-application total CPU time (ms) over the past minute. (Sum)                            | labels | ms    |
| app\_memory                    | Per-application total memory usage (bytes) over the past minute.                           | labels | bytes |
| app\_memory\_cnt               | Per-application total memory usage (bytes) over the past minute. (Count)                   | labels |       |
| app\_memory\_sum               | Per-application total memory usage (bytes) over the past minute. (Sum)                     | labels | bytes |
| app\_client\_error\_count      | Per-application average duration (ms) of WebRequest 4xx responses over the past minute.    | labels | ms    |
| app\_client\_error\_count\_cnt | Per-application count of WebRequest 4xx responses over the past minute.                    | labels |       |
| app\_client\_error\_count\_sum | Per-application total duration (ms) of WebRequest 4xx responses over the past minute.      | labels | ms    |
| app\_server\_error\_count      | Per-application average duration (ms) of WebRequest 5xx responses over the past minute.    | labels | ms    |
| app\_server\_error\_count\_cnt | Per-application count of WebRequest 5xx responses over the past minute.                    | labels |       |
| app\_server\_error\_count\_sum | Per-application total duration (ms) of WebRequest 5xx responses over the past minute.      | labels | ms    |
| app\_WebRequest                | Per-application average duration (ms) of WebRequest transactions over the past minute.     | labels | ms    |
| app\_WebRequest\_cnt           | Per-application count of WebRequest transactions over the past minute.                     | labels |       |
| app\_WebRequest\_sum           | Per-application total duration (ms) of WebRequest transactions over the past minute.       | labels | ms    |
| app\_up                        | Indicates the application was active in the past minute.                                   | labels |       |
| app\_error\_count              | Per-application total errors over the last minute.                                         | labels |       |
| app\_error\_count\_cnt         | Per-application total errors over the last minute. (Count)                                 | labels |       |
| app\_error\_count\_sum         | Per-application total errors over the last minute. (Sum)                                   | labels |       |
| app\_throughput                | Per-application average duration (ms) of master transactions over the past minute.         | labels | ms    |
| app\_throughput\_cnt           | Per-application count of master transactions over the past minute.                         | labels |       |
| app\_throughput\_sum           | Per-application total duration (ms) of master transactions over the past minute.           | labels | ms    |
| app\_txn\_error\_count         | Per-transaction total errors over the last minute.                                         | labels |       |
| app\_txn\_error\_count\_cnt    | Per-transaction total errors over the last minute. (Count)                                 | labels |       |
| app\_txn\_error\_count\_sum    | Per-transaction total errors over the last minute. (Sum)                                   | labels |       |
| app\_txn\_throughput           | Per-transaction average duration (ms) of master transactions over the past minute.         | labels | ms    |
| app\_txn\_throughput\_cnt      | Per-transaction count of master transactions over the past minute.                         | labels |       |
| app\_txn\_throughput\_sum      | Per-transaction total duration (ms) of master transactions over the past minute.           | labels | ms    |

### Transactions


| Metric Name                 | Description                                                                       | Labels | Unit |
| --------------------------- | --------------------------------------------------------------------------------- | ------ | ---- |
| txn\_active\_activity       | Number of active transactions per second, per-flavor, 1-min avg.                  | labels |      |
| txn\_active\_activity\_cnt  | Number of samples taken for the base metric over the past minute.                 | labels |      |
| txn\_active\_activity\_sum  | Total sum of values from all samples for the base metric over the past minute.    | labels |      |
| txn\_active\_time           | Avg. duration of active transactions per second (ms), per-flavor, 1-min avg.      | labels | ms/s |
| txn\_active\_time\_cnt      | Number of samples taken for the base metric over the past minute.                 | labels |      |
| txn\_active\_time\_sum      | Total sum of values from all samples for the base metric over the past minute.    | labels |      |
| txn\_error\_activity        | Number of transactions with errors per second, per-flavor, 1-min avg.             | labels |      |
| txn\_error\_activity\_cnt   | Number of samples taken for the base metric over the past minute.                 | labels |      |
| txn\_error\_activity\_sum   | Total sum of values from all samples for the base metric over the past minute.    | labels |      |
| txn\_error\_time            | Avg. duration of transactions with errors per second (ms), per-flavor, 1-min avg. | labels | ms/s |
| txn\_error\_time\_cnt       | Number of samples taken for the base metric over the past minute.                 | labels |      |
| txn\_error\_time\_sum       | Total sum of values from all samples for the base metric over the past minute.    | labels |      |
| txn\_history\_activity      | Number of completed transactions per second, per-flavor, 1-min avg.               | labels |      |
| txn\_history\_activity\_cnt | Number of samples taken for the base metric over the past minute.                 | labels |      |
| txn\_history\_activity\_sum | Total sum of values from all samples for the base metric over the past minute.    | labels |      |
| txn\_history\_time          | Avg. duration of completed transactions per second (ms), per-flavor, 1-min avg.   | labels | ms/s |
| txn\_history\_time\_cnt     | Number of samples taken for the base metric over the past minute.                 | labels |      |
| txn\_history\_time\_sum     | Total sum of values from all samples for the base metric over the past minute.    | labels |      |



### System

| Metric Name                         | Description                                      | Unit |Labels |
| ----------------------------------- | ------------------------------------------------ | ---- |
| fr\_filesystem\_transmitted\_bytes  | Data transmitted since boot (per network device) | B    |
| fr\_filesystem\_received\_bytes     | Data received since boot (per network device)    | B    |
| fr\_filesystem\_read\_bytes\_total  | Total disk read since boot                       | B    |
| fr\_filesystem\_write\_bytes\_total | Total disk write since boot                      | B    |
| fr\_filesystem\_avail\_bytes        | Available disk space                             | B    |
| fr\_filesystem\_total\_bytes        | Total disk space                                 | B    |
| fr\_filesystem\_used\_bytes         | Used disk space                                  | B    |
| fr\_system\_cpu\_seconds\_total | Cumulative CPU seconds by system, per-CPU-category           | s    |
| fr\_cf\_system\_cached\_queries             | ColdFusion cached query count, 1-min avg.                | labels                 | count     |
| fr\_cf\_system\_cached\_templates           | ColdFusion template cache count,                      | labels                 | count     |
| fr\_cf\_system\_template\_cache\_hit\_ratio | ColdFusion template cache hit ratio, 1-                | labels                 | ratio (%) |
| fr\_cf\_system\_throttled\_memory           | ColdFusion total throttle memory used, 1-min avg.       | labels                 | bytes     |
| fr\_cf\_system\_throttled\_queue\_size      | ColdFusion throttle queue size, 1-m                    | labels                 | count     |
| fr\_cf\_system\_concurrent\_users           | ColdFusion concurrent user count, 1-                  | labels                 | count     |
| fr\_cf\_system\_cf\_thread\_throughput      | ColdFusion thread count per 5 seconds, per-thread-status, 1-min avg  | thread\_status (label) | count/5s  |
| fr\_cf\_system\_scopes\_size\_kilobytes     | ColdFusion cache/scope size (KB), per-cache/scope, 1-min avg.         | cache\_scope (label)   | kilobytes |
| fr\_cf\_requests\_throughput          | ColdFusion request count per 5 seconds, per-request-type and per-request-status, 1-min avg. | request\_type, status  | count/5s  |






### Sessions

| Metric Name               | Description                      | Unit |Labels |
| ------------------------- | -------------------------------- | ---- |
| sessions\_created\_total  | Total number of sessions created |      |
| sessions\_active\_total   | Number of active sessions        |      |
| sessions\_rejected\_total | Number of rejected sessions      |      |


### Coldfusion Metrics

| Metric Name                       | Description                      | Unit |Labels |
| --------------------------------- | -------------------------------- | ---- |
| fr\_cf\_hitcounts\_total          | Total ColdFusion template hits   |      |
| fr\_cf\_system\_cached\_templates | ColdFusion cached template count |      |




## Labels


**Labels** are key-value pairs attached to metrics that provide additional context. They help distinguish between different dimensions of the same metric, such as the source, type, or environment. Labels are essential for querying, filtering, grouping, and visualizing metric data effectively.

For example, a metric like `app_cpu` might have labels such as `app="frontend"` or `env="production"`. A single metric can have multiple labels, and the complete set of labels associated with a metric instance is known as its **label set**. The label set uniquely identifies each time series.

For instance, `app_cpu{app="frontend",env="production"}` and `app_cpu{app="frontend",env="staging"}` represent two distinct time series because their label sets differ.

Here's a clean and organized copy of the **Labels** content from your image, presented in a markdown-style table layout for clarity:

---

#### up

| Name      | Description       | Example      | More Info |
| --------- | ----------------- | ------------ | --------- |
| start\_ts | Start time of the JVM in milliseconds | 173838589214 |           |

---

#### fusionreactor\_build\_info

| Name      | Description     | Example  | More Info |
| --------- | --------------- | -------- | --------- |
| version   | FR version      | 12.1.1   |           |
| build\_no | CI Build number | 11408    |           |
| branch    | Git branch name | 12.1.1   |           |
| revision  | Git commit hash | c83b8bbf |           |

---

#### fr\_server\_info

| Name                | Description        | Example           | More Info                   |
| ------------------- | ------------------ | ----------------- | --------------------------- |
| java\_runtime\_name | Java runtime name  | OpenJDK Runtime   |                             |
| java\_runtime\_version  | Java runtime ver   | 13.0.2+8          |                             |
| type                | Server type        | TOMCAT            | Can be UNKNOWN              |
| home                | Server home        | /home/luke/app/fr | Not present if not defined  |
| version             | Server version     | 9.0.50            |                             |
| server\_name        | Server name        | page              | UNKNOWN if not detected     |
| engine              | ColdFusion engine  |                   |                             |
| lucee\_version      | Lucee version      |                   | UNKNOWN if not detected     |
| tomcat\_version     | Tomcat version     | 9.0.93            | Not present if not detected |
| coldfusion\_version | ColdFusion version |                   | CommandBox only             |
| coldfusion\_product\_name | ColdFusion prod ID | CF only           |                             |
| coldfusion\_build   | ColdFusion build   | 330808            | CF only                     |
| coldfusion\_major   | ColdFusion major   | 2023              | CF only                     |
| coldfusion\_minor   | ColdFusion minor   | 0                 | CF only                     |
| coldfusion\_service   | ColdFusion service |                   | CF only                     |
| coldfusion\_hotfix  | ColdFusion hotfix  | hf-2023-00010-3   | CF only                     |

---

### fusionreactor\_license\_info

| Name  | Description   | Example | More Info |
| ----- | ------------- | ------- | --------- |
| type  | License type  | ULT     |           |
| state | License state | active  |           |
| cloud | Is Cloud lic  | true    |           |

---

#### app\_database\_throughput / app\_database\_error

| Name      | Description          | Example       | More Info |
| --------- | -------------------- | ------------- | --------- |
| app\_name | Application Name     | JSP Test App  |           |
| database  | The database by name | DerbyMemoryDB |           |
| table     | Database table       | company\_d    |           |
| action    | Database action      | insert        |           |

---

#### app\_cpu / app\_memory

| Name      | Description      | Example      | More Info |
| --------- | ---------------- | ------------ | --------- |
| app\_name | Application Name | JSP Test App |           |

---

#### fr\_cf\_hitcounts\_total

| Name | Description    | Example          | More Info |
| ---- | -------------- | ---------------- | --------- |
| type | Hit count type | One of: ref, web |           |

---

#### app\_client\_error\_count / app\_server\_error\_count

| Name      | Description      | Example      | More Info |
| --------- | ---------------- | ------------ | --------- |
| app\_name | Application Name | JSP Test App |           |

---

### app\_WebRequest

| Name      | Description      | Example      | More Info                  |
| --------- | ---------------- | ------------ | -------------------------- |
| app\_name | Application Name | JSP Test App |                            |
| status    | Status code      |              | Not present on status code |



####  app_up / app_error_count / app_throughput

| Name      | Description      | Example      | More Info |
| --------- | ---------------- | ------------ | --------- |
| app\_name | Application Name | JSP Test App |           |

---

####  app_txn_error_count / app_txn_throughput

| Name      | Description      | Example                         | More Info      |
| --------- | ---------------- | ------------------------------- | -------------- |
| app\_name | Application Name | JSP Test App                    |                |
| txn\_name | Transaction name | controls.print\_00… (truncated) | max 2048 chars |

---

####  jvm_gc_collection_seconds / jvm_gc_collection_calls

| Name | Description | Example      | More Info |
| ---- | ----------- | ------------ | --------- |
| gc   | GC type     | G1 Young Gen |           |

---

#### fr_system_cpu_seconds_total

| Name | Description          | Example | More Info |
| ---- | -------------------- | ------- | --------- |
| mode | Category of CPU time | nice    |           |

---

####  jvm_threads_state

| Name  | Description  | Example  | More Info |
| ----- | ------------ | -------- | --------- |
| state | Thread state | runnable |           |

---

####  uem

| Name | Description | Example | More Info |
| ---- | ----------- | ------- | --------- |
| type | UEM type    | wr      |           |

---

####  jvm_memory_pool_bytes_committed \ jvm_memory_pool_bytes_used \ jvm_memory_pool_bytes_max

| Name | Description  | Example    | More Info |
| ---- | ------------ | ---------- | --------- |
| pool | Memory space | G1 Old Gen |           |

---

####  jvm_memory_bytes_used / jvm_memory_bytes_committed / jvm_memory_bytes_ma / jvm_memory_bytes_used_percentage / jvm_memory_bytes_committed_percentage

| Name | Description | Example | More Info |
| ---- | ----------- | ------- | --------- |
| area | Memory area | heap    |           |

---

###  fr_network_received_bytes_total / fr_network_transmitted_bytes_total

| Name   | Description    | Example   | More Info |
| ------ | -------------- | --------- | --------- |
| device | Network device | enp59s0f1 |           |

---

###  fr_filesystem_read_bytes_total

| Name   | Description | Example        | More Info |
| ------ | ----------- | -------------- | --------- |
| device | Disk name   | /dev/nvme0n1p1 |           |

---

###  `txn_activity` / `txn_history` / `txn_error`

| Name   | Description        | Example    | More Info                                        |
| ------ | ------------------ | ---------- | ------------------------------------------------ |
| flavor | Transaction flavor | WebRequest | Can only be one of: WebRequest, CFML, REST, etc. |

---

###  `fr_cf_system_cf_thread_throughput`

| Name   | Description      | Example | More Info |
| ------ | ---------------- | ------- | --------- |
| status | CF thread status | running |           |

---

###  `fr_cf_system_scopes_size_kilobytes`

| Name  | Description   | Example        | More Info       |
| ----- | ------------- | -------------- | --------------- |
| scope | CF scope type | session\_scope | template\_cache |

---

###  `fr_cf_requests_throughput`

| Name   | Description    | Example     | More Info |
| ------ | -------------- | ----------- | --------- |
| status | Request status | running     |           |
| type   | Request type   | web service |           |





