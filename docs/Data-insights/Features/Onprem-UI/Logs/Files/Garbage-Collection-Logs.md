# Garbage Collection Logs

To disable Garbage Collection logging use the setting in the Resource
Settings page. There is a log file created for each Garbage Collection
space that is available on the JRE.

|Field Name|Number|Description|
|--- |--- |--- |
|Date (Formatted)|1|The date on which this resource probe was triggered.|
|Time (Formatted)|2|The time at which this resource probe was triggered.|
|Date/Time (ms)|3|This is the millisecond time at which at which this resource probe was triggered.|
|Version|4|Version number of this log entry|
|Server Startup Time (ms)|5|Start up time of the application server in milliseconds (ms) since epoch.|
|Name|6|The name that represents the garbage collection space.|
|Count|7|This is the number of collections that have occurred since the last log|
|Time|8|This is the time spent in garbage collection since the last log|
