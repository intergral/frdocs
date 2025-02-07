## Resource Settings

The Resource Settings page lets you modify various elements relating to
resource sampling and logging. The page has the following items:

### Logging (CPU-Thread Status/Memory Spaces)

|Configuration|Description|Default|
|--- |--- |--- |
|CPU/Thread Status|Setting this to Enabled will allow CPU/Thread information to be logged, setting it to disabled will not log the information. <br> <br>**WARNING**: Enabling this option will create very detailed log files, please ensure sufficient disk space is available before doing so.|Disabled|
|Memory Space|When Enabled detailed sizing information about memory spaces will be logged.|Enabled|
|Thread State Active|When enabled, a graph and logs will be generated based on the thread states, sampled every 5 seconds. Disabling this will also disable the logging. <br> <br> **WARNING**: This could slow down the system if you are running lots of threads.|Enabled|
|Thread State Logging|When enabled, information on current thread states are logged. Disabling this will not effect the graph generated.|Enabled|

### Resource Logging (CPU/Memory/Request/JDBC)

|Configuration|Description|Default|
|--- |--- |--- |
|Resource Logging|If Resource Logging is enabled then resource information will be written to the Resource Log.|Enabled|
|View Size (KB)|This value indicates how much of the log file should be displayed when you view the Resource Log from inside FusionReactor.|128 KB|

### Logging (Garbage Collection)

|Configuration|Description|Default|
|--- |--- |--- |
|GC Logging|When enabled, information on Garbage Collection activity is logged.|Enabled|

### Graph Scaling

|Configuration|Description|Default|
|--- |--- |--- |
|Auto Scaling|When set to enabled, this makes all the graphs auto scale to the best fit for the graph.|Disabled|


### Threads

|Configuration|Description|Default|
|--- |--- |--- |
|Deadlock Highlighting|When set to enabled, this will make any deadlocked threads highlight on the Thread State page.|Enabled|

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.

