# Resource Log

The Resource log (resource.log) (a set of rotating log files accessible over the
[Resource Settings](../../Resources/Settings.md)
page) are simple space-separated files so they can be easily imported
into database or spreadsheet applications. The file is called
**resource.log**, the bottom part of the page tells you where you can
locate this file on your hard drive.

The log file is formatted as follows:

|Field Name|Number|Description|
|--- |--- |--- |
|Date (Formatted)|1|The date on which this resource probe was triggered.|
|Time (Formatted)|2|The time at which this resource probe was triggered.|
|Date/Time (ms)|3|This is the millisecond time at which at which this resource probe was triggered.|
|Version|4|Version number of this log entry.|
|Server Startup Time (ms)|5|Startup time of the application server in milliseconds (ms) since epoch.|
|MEM|6|Fixed Separator|
|Used Memory (percentage)|7|The amount of used heap memory (expressed as a percentage.).|
|Max Memory (KB)|8|The maximum heap size set for this instance.|
|Used Memory (KB)|9|The amount of used heap memory.|
|Total Memory (KB)|10|The amount of allocated heap memory.|
|Free Memory (KB)|11|The amount of free heap memory (within the allocated block).|
|CPU|12|Fixed Separator|
|Instance CPU Time (percentage)|13|This is the amount of CPU time used by the instance since the last CPU value was measured. It is expressed as a percentage of the total CPU time (across all CPU cores) that was available during that period.|
|System CPU (percentage)|14|This is the amount of CPU time used on the server (all running applications) since the last CPU value was measured. It is expressed as a percentage of the total CPU time (across all CPU cores) that was available during that period.|
|REQ|15|Fixed Separator|
|Total Started Request Count|16|The total number of requests that have been started since the last instance restart.|
|Total Finished Request Count|17|The total number of requests that have been completed since the last instance restart.|
|Running Request Count|18|The number of requests that were running at the time of this log message.|
|Queued Request Count|19|The number of requests that were queued at the time of this log message.|
|Finished Request Count|20|The number of requests that were completed since the last log message.|
|Finished Requests Per Second|21|The number of completed requests per second that where being served since the last log message (Finished Request Count / # secs since last log message).|
|Finished Requests Average Time (ms)|22|The average execution time of requests completed since the last log message.|
|JDBC|23|Fixed Separator|
|Total Started JDBC Count|24|The total number of JDBC requests that have been started since the last instance restart.|
|Total Finished JDBC Count|25|The total number of JDBC requests that have been completed since the last instance restart.|
|Running JDBC Count|26|The number of JDBC requests that were running at the time of this log message.|
|Finished JDBC Count|27|The number of JDBC requests that were completed since the last log message.|
|Finished JDBC Per Second|28|The number of JDBC requests per second that where completed since the last log message (Finished JDBC Count / # secs since last log message).|
|Finished JDBC Average Time (ms)|29|The average JDBC execution time of requests completed since the last log message.|
|Rate|30|The sample rate in ms. **Obsolete**: This value is no longer output, but written as an empty quoted string in order to preserve the ordering of the remainder of the fields.|
|RUNNING|31|Fixed Separator|
|Running Requests Average Time (ms)|32|The average runtime of requests running at the time of logging.|
|Running JDBC Average Time (ms)|33|The average runtime of JDBC requests running at the time of logging.|
|REQERR|34|Fixed Separator.|
|Total Request Error Count|35|The total number of requests that completed with an error code since the last instance restart.|
|Request Error Count|36|The number of requests that completed with an error code since the last log message.|
|Request Error AverageTime|37|The average execution time of requests completed since the last log message.|
|Finished Errors per Second|38|The number of requests that completed in error that were served since the last log message.|
