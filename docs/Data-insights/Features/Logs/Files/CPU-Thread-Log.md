# CPU Thread Log

To enable CPU Thread logs (cputhread.log) enable the option on the [Resource Settings](../../Resources/Settings.md) page. The log allows you to
view information about threads that ran on the servers CPU. Each log
entry occupies one line and contains various pieces of useful
information. Below is a table explaining each element in the log.
Elements are separated with a white space character.

|Field Name|Number|Description|
|--- |--- |--- |
|Date (Formatted)|1|The date on which this resource probe was triggered.|
|Time (Formatted)|2|The time at which this resource probe was triggered.|
|Date/Time (ms)|3|This is the millisecond time at which at which this resource probe was triggered.|
|Version|4|Version number of this log entry.|
|Server Startup Time (ms)|5|Startup time of FusionReactor server in milliseconds (ms) since epoch.|
|Thread Name|6|The name of the thread.|
|Thread ID|7|The thread ID.|
|CPU Time (nanoseconds)|8|The amount of time a thread has been alive for. A thread is alive if it's running and has not died.|
|User Time (nanoseconds)|9|The amount of time that a thread has executed in user mode.|
|CPU Time Delta (nanoseconds)|10|The difference between the the current CPU Time and the previous CPU Time attributes. Current being the thread one in front of the previous in the log entries.|
|User Time Delta (nanoseconds)|11|The difference between the the current User Time and the previous User Time attributes. Current being the thread one in front of the previous in the log entries.|
|Thread Blocked Count|12|The number of times that the thread has been in the blocked state.|
|Thread Blocked Time (milliseconds)|13|The total amount of time the thread has been in the blocked state.|
|Thread Blocked Delta|14|The difference between the amount of times the current thread has been in the blocked state and the previous thread has been in the blocked state. Current being the thread one in front of the previous in the log entries.|
|Thread Blocked Time Delta (milliseconds)|15|The time difference between the time period the current thread has been in the blocked state and the previous thread has been in the blocked state. Current being the thread one in front of the previous in the log entries.|
|Lock Name|16|Monitor lock that the thread is associated with.|
|Lock Owner ID|17|The ID of the thread that holds the monitor lock.|
|Lock Owner Name|18|The name of the thread that holds the monitor lock.|
|Waited Count|19|The number of times the thread has been in the waiting state.|
|Waited Time (milliseconds)|20|The total amount of time the thread has been in the waiting state.|
|Waited Count Delta|21|The difference between the amount of times the current thread has been in the waiting state and the previous thread has been in the waiting state. Current being the thread one in front of the previous in the log entries.|
|Waited Time Delta (milliseconds)|22|The time difference between the time period the current thread has been in the waiting state and the previous thread has been in the waiting state. Current being the thread one in front of the previous in the log entries.|
|Thread State|23|The thread state. States include new, runnable, blocked, waiting, timed_waiting and terminated.|
|Sample Period|24|The difference in time between the current resource probe being triggered and the previous resource probe being triggered. Current being the thread one in front of the previous in the log entries,|
