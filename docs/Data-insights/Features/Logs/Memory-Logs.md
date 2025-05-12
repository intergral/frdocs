# Memory Logs

The Memory Logs section contains two pages. One explains
the [memorysummary.log](#memory-summary-log) which is a basically a log
containing heap and non heap memory information. The other page talk
about how every server references memory in different ways and how
FusionReactor handles this and manages to create a logs that match the
types of memory used by that server.

## Memory Summary Log

For information on changing log settings see the [Log Settings](/Data-insights/Features/Logs/Settings/) ttipage. This log displays
information about the memory heap and non heap memory (into memorysummary.log). Each log entry
occupies one line and contains various pieces of useful information,
separated with a white space character. Below is a table explaining each
element in the log. Elements are separated with a white space character.
The log is called memorysummary.log.


|Field Name|Number|Description|
|--- |--- |--- |
|Date (Formatted)|1|The date on which this resource probe was triggered.|
|Time (Formatted)|2|The time at which this resource probe was triggered.|
|Date/Time (ms)|3|This is the millisecond time at which at which this resource probe was triggered.|
|Version|4|Version number of this log entry|
|Server Startup Time (ms)|5|Startup time of the application server in milliseconds (ms) since epoch.|
|Heap Memory Allowance (Percentage)|6|The amount of heap memory that can be used for memory management.|
|Heap Memory Used (Bytes)|7|The amount of heap memory used.|
|Heap Memory Committed Bytes|8|The amount of memory that can be used for the heap by the Java Virtual Machine.|
|Heap Memory Requested (Bytes)|9|The amount of heap memory that the Java Virtual Machine initially requests from the operating system.|
|Heap Memory Allowance (Bytes)|10|The amount of  heap memory that can be used for the heap by the Java Virtual Machine.|
|Non Heap Memory Allowance (Percentage)|11|The amount of non heap memory that can be used for memory management.|
|Non Heap Memory Used (Bytes)|12|The amount of non heap memory used.|
|Non Heap Memory Committed (Bytes)|13|The amount of non heap memory that can be used for the heap by the Java Virtual Machine.|
|Non Heap Memory Requested (Bytes)|14|The amount of non heap memory that the Java Virtual Machine initially requests from the operating system.|
|Non Heap Memory Allowance (Bytes)|15|The amount of non heap memory that can be used for memory management.|
|Object Finalization Count|16|The number of objects waiting to have their finalize method called. This is the method that is called before the object is destroyed.|


## Broken Down Memory Logs

The heap memory and non heap memory can be further broken down to
specific areas. Every server handles areas of memory differently and
refers to them using terms other servers may not use. FusionReactor
recognizes this and creates logs for all the different areas of memory
that particular server supports, furthermore the logs are named after
the area of memory that the server uses making it easier for you to
locate your logs.

## Log fields

All areas of memory are stored in logs in a similar fashion to each
other with the only difference being an attribute that identifies the
log type. Below is the standard layout for any kind of memory log file
(excluding Memory Heap / Non Heap log).

|Field Name|Number|Description|
|--- |--- |--- |
|Date (Formatted)|1|The date on which this resource probe was triggered.|
|Time (Formatted)|2|The time at which this resource probe was triggered.|
|Date/Time (ms)|3|This is the millisecond time at which at which this resource probe was triggered.|
|Version|4|Version number of this log entry|
|Server Startup Time (ms)|5|Start up time of the application server in milliseconds (ms) since epoch.|
|Name|6|The name that represents the memory pool.|
|Log File Type|7|The types of memory that the log relates to (heap or non heap).|
|Memory Collection Used (Percent)|8|The amount of collection memory used.|
|Memory Collection Usage Used (Bytes)|9|The amount of collection memory used.|
|Memory Collection Usage Committed (Bytes)|10|The amount of collection memory committed for the JVM to used.|
|Memory Collection Usage Requested (Bytes)|11|The amount of collection memory initially requested from the OS by the JVM.|
|Memory Collection Usage Allowance (Bytes)|12|The total amount of collection memory that can be used for memory management.|
|Collection Usage Threshold Count|13|The number of times that the JVM has detected that the memory usage has reached or exceeded the threshold.|
|Collection Usage Threshold (bytes)|14|The collection usage threshold value of the memory pool.|
|Is Collection Threshold Exceeded|15|If the memory usage of the memory pool has reached or exceeded the threshold count. If it has exceeded the value will be 1, otherwise it will be 0.|
|Memory Usage Used(Percent)|16|The amount of memory used.|
|Memory Usage Used (Bytes)|17|The amount of memory used.|
|Memory Usage Committed (Bytes)|18|The amount of memory committed for the JVM to used.|
|Memory Usage Requested (Bytes)|19|The amount of memory initially requested from the OS by the JVM.|
|Memory Usage Allowance (Bytes)|20|The total amount of memory that can be used for memory management.|
|Usage Threshold Count|21|The number of times that the JVM has detected that the memory usage has reached or exceeded the threshold.|
|Usage Threshold (bytes)|22|The usage threshold value of the memory pool.|
|Is Usage  Threshold Exceeded|23|If the memory usage of the memory pool has reached or exceeded its usage threshold value. If it has exceeded the value will be 1, otherwise it will be 0|
|Peak Memory Usage Used (Percent)|24|The peak amount of memory used.|
|Peak Memory Usage Used (Bytes)|25|The peak amount of memory used.|
|Peak Memory Usage Committed (Bytes)|26|The peak amount of memory committed for the JVM to use.|
|Peak Memory Usage Requested (Bytes)|27|The peak amount of memory initially requested from the OS by the JVM.|
|Peak Memory Usage Allowance (Bytes)|28|The peak amount of memory that has been used for memory management|
