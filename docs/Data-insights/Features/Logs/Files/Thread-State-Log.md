# Thread State Log

To disable this log use the setting in the [Resource
Settings](../../Resources/Settings.md) page. These logs contain
information about the number of threads in each state.

|Field Name|Number|Description|
|--- |--- |--- |
|Date (Formatted)|1|The date on which this resource probe was triggered.|
|Time (Formatted)|2|The time at which this resource probe was triggered.|
|Date/Time (ms)|3|This is the millisecond time at which at which this resource probe was triggered.|
|Version|4|Version number of this log entry|
|Server Startup Time (ms)|5|Start up time of the application server in milliseconds (ms) since epoch.|
|Thread Status New|6|The number of threads in the NEW state.|
|Thread Status Blocked|7|The number of threads in the BLOCKED state.|
|Thread Status Runnable|8|The number of threads in the RUNNABLE state.|
|Thread Status Waiting|9|The number of threads in the WAITING state.|
|Thread Status Timed Waiting|10|The number of threads in the TIMED_WAITING state.|
|Thread Status Terminated|11|The number of threads in the TERMINATED state.|
|Total Thread Count|12|The total number of threads that are in existence on the system.|
