# Logs

FusionReactor provides many helpful graphs and metrics to help you see
how your system is performing.   These graphs are available in real-time
and will also show you a short history of what happened (depending on
the amount of data which has been generated), but what happens when your
server begins to crash?   Lots of this data is stored in-memory so it
can be used to generate reports and lists for the FusionReactor
Administrator.  If you are having problems which cause (or necessitate)
restarts of the server process, this in-memory data is lost - however
all of this data will have been captured to one of FusionReactor's
extensive log files. 

This data can in almost all cases be used in a post-mortem session to
pinpoint the location of problems within a system. In addition to
immediate post-mortem work, the logs can also be used to analyze usage
patterns, trends and to derive longer-term aggregate data. 

As of FusionReactor 4.0, there are two styles of logging which is
supported by FusionReactor. You can change current logging method on the
[Log Settings](Settings.md) page.


If you wish to use the FusionAnalytics Connector then you must be using
the Centralized Archive and Rotation logging method. If you try to
enable the FusionAnalytics Connector whilst in Traditional mode then you
will be be notified that the logging method will need to change and be
given the option of having FusionReactor automatically make that change
for you.

## Centralized Archive and Rotation

If you install FusionReactor from scratch then this is the logging
mechanism you will be using by default. The idea behind Centralized
Archive and Rotation is that you end up with a set of log folders named
with a timestamp (within the existing Log Directory specified on the
[Log Settings](Settings.md) page that each contain
a complete set of log files for a specified period of time. You can
choose whether a new folder be created every 'n' minutes, or you can
specify a time at which the logs are daily rotated. Additionally you can
specify how much log data you want to save, either by amount of disk
space used, or period of time covered (or you can save all the logs if
you have a big enough hard drive). The main advantage to this logging
method over the older Traditional method is that is is a lot easier to
batch up a complete set of log files covering a distinct period of time
which is very useful when trying to compare values between log files or
when importing them into something like FusionAnalytics.

All of these log settings are available on the
[Log Settings](Settings.md) page.

## Traditional Per-Log Rotation

If you upgrade an older version of FusionReactor then this will be the
default logging mechanism you will be using. It is the logging mechanism
used by all versions of FusionReactor prior to 4.0. The idea behind this
logging mechanism is that, for each log file in the system, you can
specify how big that file is allowed to become and how many log files
you want to keep. If you specify a log size of 10MB and say that you
want a history of 5 log files then you will have a maximum of 50MB of
logs available to you at any time. With Traditional Per-Log Rotation,
all the log files are stored in the Log Directory specified on the
[Log Settings](Settings.md) page. For each type of
log (e.g. request.log) you will end up with a set of numbered log files
(e.g. request-0.log, request-1.log ... request-4.log). Once request-0.log
is full, all the log files are renamed and a new request-0.log is
started (so request-0.log would always contain the latest log messages).
The oldest log file (in this example, request-4.log) is deleted and
immediately replaced with the file previously named request-3.log.

The settings for the File Size and File Count of your log files can be
found in the associated settings page (e.g.
[Requests Settings](../Requests/Settings.md) for the
request.log). We recommend however that you switch to the new
Centralized Archive and Rotation logging method as it will give you more
control over your logs.

## Log Page

The Log View page in FusionReactor provides insight into the current
logs FusionReactor is writing to. It can be found under the
FusionReactor tab on the top menu level.

[![](/attachments/245548584/245548591.png)](/attachments/245548584/245548591.png)

### Options

![](/attachments/245548584/245548596.png)

-   From the page buttons, you have the options to select other log
    files that might be in the current directory.

!!!note
    In FusionReactor 7.3.0 the dropdown functionality was changed to only
    show files that are currently existing within the log directory.
    Non-existent files will no longer show up here.

-   The Tail button will make sure that the scroll bar is stuck towards
    the end of the log file, this can be used to monitor log output as
    it is happening in real time.
-   The Delete button will delete the selected log file from
    FusionReactor's log directory, use this with caution!
-   The Archive Viewer button is a redirect to the Archive Viewer Page,
    this might be handy if your log file was rotated and is not
    currently visible on the Logs page.
-   The refresh button will attempt to load any new changes to the log
    file, this is useful when you do not necessarily want to tail the
    file.


## Logs Files

These are logs that relate to captured server data, for example
requests, query results, cpu/memory information etc. It is important to
note that the names to these logs will differ on FusionReactor's User
Interface, this discrepancy is referred to in the table below under the
UI Name column.

Clicking on the log names will take you to a page dedicated to that log,
explaining each column in that log along with useful additional
information.

|File Name|UI Name|Log Type|
|--- |--- |--- |
|classes.log|Class Loading Log|DATA|SYSTEM|
|cloud-state.log|Cloud State Log|DATA|PLUGIN|
|cputhread.log|CPU Thread Log|DATA|SYSTEM|
|crashprotection.log|Crash Protection Log|DATA|SYSTEM|
|datapack-transport.log|Cloud Transport Log|DATA|PLUGIN|
|dbpoolstats.log|DB Pool Stats Log|DATA|PLUGIN|
|deadlock.log|Deadlock Log|DATA|PLUGIN|
|fr-jrun-event.log|Jrun Event Log|DATA|PLUGIN|
|fr-probi.log|Probi Log|STATUS|SYSTEM|
|gc-G1-Young-Generation.log|G1 Garbage Collection Log|DATA|SYSTEM|
|gc-[TYPE].log|Garbage Collection [TYPE] Log|STATUS|SYSTEM|
|heartbeat.log|Heartbeat Log|DATA|PLUGIN|
|hitcountstats.log|Hit Count Stats Log|DATA|PLUGIN|
|HTTP.log|HTTP Log|RAW|SYSTEM|
|ir-audit2.log|Cloud IR Audit Log|DATA|PLUGIN|
|jdbc.log|JDBC Log|DATA|SYSTEM|
|juli-[TYPE].log|JULI [TYPE]|RAW|RAW|
|memory[TYPE].log|[TYPE] Log|DATA|SYSTEM|
|memorysummary.log|Memory Summary Log|DATA|SYSTEM|
|notification.log|Notifications Log|DATA|SYSTEM|
|odl.log|ODL Log|DATA|SYSTEM|
|osgi.log|OSGi Log|STATUS|SYSTEM|
|plugin-[name]-plugin.log|Log for the [name] plugin|STATUS|PLUGIN|
|reactor.log|Reactor Log|STATUS|SYSTEM|
|realtimestats.log|Real Time Stats Log|DATA|PLUGIN|
|request.log|Request Log|DATA|SYSTEM|
|resource.log|Resource Log|DATA|SYSTEM|
|stacktrace.log|Stacktrace Log|DATA|SYSTEM|
|stdout.log|Standard Out Log|RAW|SYSTEM|
|stderr.log|Standard Error Log|RAW|SYSTEM|
|thread-state.log|Thread State Log|DATA|SYSTEM|

### Log Type

|Word|Definition|
|--- |--- |
|DATA|Data related to the server memory, CPU, response time etc.|
|STATUS|Data related to a PLUGIN or the SYSTEM. The information is brief and  only covers the state of the PLUGIN or SYSTEM.|
|RAW|Raw logs are logs which FusionReactor capture from other sources and redirections.  The format is unknown to FusionReactor and is simply a clone of the stream|

## Log File Format

All logs are space-delimited. This allows you to easily [import the
files into spread
sheets](Importing-and-Graphing-Data-in-Excel.md) such as
Microsoft excel and openoffice as well as databases, allowing you to
view/analyze/graph the logs as you may prefer.

Below is a (fictional) example of a log file and how a table for the log
would explain its columns.

### Example log file and table

Below is an example log file line:

```
SERVER1 70 5 21
```

This log file line contains the column values SERVER1, 70, 5, and 21.
Below is the table that would explain the log file.

|Field Name|Number|Description|
|--- |--- |--- |
|Server Name|1|The server's name.|
|Efficiency(percentage)|2|How efficient the server is.|
|Downtime (hours)|3|The downtime of the server.|
|Uptime (hours)|4|The up time of the server.|

### Exceptions to the typical log file format

There are several log files which also contain a plain text message
(e.g. reactor.log). In this case, the
space-delimited format applies for first few columns, until the last
one, the 'message' value, where everything to the end of the line is
considered the value of that last field.

## External Capturing

FusionReactor 7.3.0 introduces further improvements to how information
from application servers is captured. Much like the Apache Commons log
files, FusionReactor will intercept log files from the Apache's JULI
logging API and include them in its log directory. This can be
beneficial for individuals with application deployment issues.

In addition to this, FusionReactor will capture the standard output from
the Java runtime and put this into two new files: Standard Out Log and
Standard Error Log.

### Tomcat Log Capturing

Any log files that have been retrieved from Apache's JULI API will be
prefixed with "juli" on the file level. These files can vary between
hostmanager or per-app log files, for example.

!!!Note
    It is important to note that Tomcat's catalina.out differs from our
    juli-catalina.log. FusionReactor will separate the standard out/error
    print statements into a completely different file (see below), however
    catalina.out contains both the catalina log messages in addition to the
    standard out/error.

### Standard Out and Standard Error Capturing

FusionReactor will capture the standard out (stdout) and standard error
(stderr) of the Java process which are written from Java methods / byte
code. This will not include print messages which are written by native
libraries. FusionReactor captures the stdout and stderr from the start
of the process. While FusionReactor is starting up it will store up to
500 lines for each log to write into the FR log directory.
