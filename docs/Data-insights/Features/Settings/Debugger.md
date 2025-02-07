## Debugger Settings

Under the general setting for the debugger there is an option to disable / enable debugger.  

|Configuration|Description|Default|
|--- |--- |--- |
|Active|Enables or disables all hooks used by the Production Debugger effectively disabling all events from firing. This will remove all breakpoints from the debugger and disable most of the hooks that the debugger uses.|Enabled|

### Email

This section provides settings specific to the email handlers.

|Configuration|Description|Default|
|--- |--- |--- |
|Email Alerts|Enables or disables the email alerts for the Production Debugger|Enabled|
|Email Address|Enter one or more addresses (comma separated) to use for the Production Debugger specific emails instead of the default FusionReactor email addresses configured.|N/A|
|Email Alert Intervals|This is the period (in seconds) that must elapse before the next email alert can be set. Leave empty to receive all emails.|N/A|


### Threads

This section provides settings specific to the thread handling in the
debugger.

|Configuration|Description|Default|
|--- |--- |--- |
|Max Threads|The maximum number of threads which can be paused at once in the Production Debugger. Leave empty for no limiting. 0 means no threads can be paused. Currently-paused threads will not be affected.|N/A|


### Stepping

|Configuration|Description|Default|
|--- |--- |--- |
|Max Step Duration|The maximum duration the Production Debugger will continue to step code until the next location. (duration in seconds)|15|


### Exceptions

The exceptions settings exists to simply say whether exception support
has been enabled.  This feature has to be enabled by setting the java
argument

```bash
-Dfr.jvmti.enable.exceptions=true
```

### One Click Breakpoints

|Configuration|Description|Default|
|--- |--- |--- |
|Fire Count|The default fire count which controls how many times to fire the new breakpoint before it becomes disabled. This fire count is used for all new breakpoints created by clicking in the source UI margin.|1|
|Pause Time|The default time to pause the thread, in seconds, before continuing. This time out is used for all new breakpoints created by clicking in the source UI margin.|60|


### Event Snapshot

|Configuration|Description|Default|
|--- |--- |--- |
|Enabled|Enables or disables the event snapshot generation in the Production Debugger|Disabled|
|Snapshot Directory|The directory to store the heap snapshots into. Changing this directory will not affect the old directory. It will still exist and will still contain the snapshots. All new snapshots will be created in this new directory.|<instance director>/event_snapshots|
|Event Snapshots per minute|The maximum number of event snapshots which will be generated per minute.|10|
|Event Snapshots per transaction|The maximum number event snapshots which can be generated per transaction.|2|
|Log statement snapshot level|This setting controls the minimum log level for which an Event Snapshot will be generated. Logging at this level or more severe will trigger a snapshot. Since the Log Tracker Plugin triggers these snapshots, its configuration must also be set to this (or a less severe) level.|ERROR|
|Maximum number of snapshots to retain|The maximum number of event snapshots stored on disk. Older files are removed first. Default is 1000 files.|1000|
|Maximum total size of snapshots to retain (in kB)|The maximum size of all event snapshots stored on disk. Older files are removed first. Default is unset.|Not Set|

