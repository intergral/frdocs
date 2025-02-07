## Crash protection settings

### WebRequest Quantity Protection

This section provides settings to configure WebRequest Quantity Protection on
your server. This protection type allows you to
restrict how many requests can run on you server at any one time, to
protect from excessive numbers of requests all being run and causing
your server performance to become slow or even crash.

The following settings are available to configure WebRequest Quantity Protection:

|Configuration|Description|Default|
|--- |--- |--- |
|WebRequest Quantity Protection Threshold|This specifies the threshold value for the number of requests running at one time. If a new request occurs and the number of currently running requests is above this amount then the selected Request Protection Strategy will be triggered. Leave blank to disable feature.|N/A|
|Minimum Condition Duration|Specifies the minimum time that the Quantity Protection Value must hold before this protection becomes active. If a new request occurs and the number of currently running requests has been above the Quantity Protection Value for at least the minimum time specified, then the selected Request Protection Strategy will be triggered. The minimum and default value is 0s, which means the protection is active immediately.|0 Seconds|
|Request Protection Strategy|This defines what happens when this Protection type is triggered. The individual survival strategies are defined as follows: <br> <br> Reject (with Email Notification): Reject any new requests until the protection trigger has recovered. Optionally sends an email notification. <br> <br> Queue (with Email Notification): Store requests until the protection trigger has recovered or until they timeout and are Aborted. (See Survival Strategy settings.) Optionally sends an email notification. <br> <br> Email Notification Only: Send an email notification but take no further action. <br> <br> Email Notifications need to be enabled in Email Settings before any notification emails will be sent.|Email Notification Only|
|Untracked Request|Controls whether requests set to 'Untracked' by Request Runtime Protection's 'When Triggered...' setting count towards the Quantity Protection threshold.|Aren't Counted for the Threshold|

### WebRequest Runtime Protection

This section provides settings to configure WebRequest Runtime Protection on
your server. In versions prior to FusionReactor 5.0.0 this protection
type was known as Timeout Protection. This protection type allows you to
abort requests that run for longer than you would like, which may cause
your server to slow down or lock up. The following settings are
available to configure WebRequest Runtime Protection:

|Configuration|Description|Default|
|--- |--- |--- |
|WebRequest Runtime Protection Threshold|This specifies the threshold value for the duration (in seconds) of requests that are executed on your server. If a request executes for longer than the specified number of seconds then the Runtime Protection Strategy will be triggered. Leave blank to disable feature.|N/A|
|Request Runtime Protection Strategy|This defines what happens when this protection type is triggered. The individual survival strategies are defined as follows: <br> <br> Abort (with Email Notification): Protection will attempt to abort any requests that have run for too long and have triggered Request Runtime Protection. Optionally sends an email notification containing details about the triggering request. <br> <br> Email Notification Only: Send an email notification but take no further action. <br> <br> Email Notifications need to be enabled in Email Settings before any notification emails will be sent.|Email Notification Only|
|When triggered|Requests that are aborted by crash protection can also optionally be excluded from calculation of some metrics by setting the When Triggered action: <br> <br> Continue Tracking Request - (default) the request will continue to be tracked and incorporated in subsequent calculations <br> <br> Stop Tracking Request - the request will not be incorporated in subsequent calculations.Requests which are not tracked won't be counted when calculating long-running requests, or average runtimes. Any JDBC statements run by these requests will also be ignored by tracking.  The tracking policy set here will apply whether or not the request kill was successful.  Such requests will be labelled as Untracked in the user interface, and will not cause a "red cube" condition on the Enterprise Dashboard (for users with applicable licenses).|Continue Tracking Request|

### WebRequest Memory Protection

This section provides settings to configure WebRequest Memory Protection on
your server. This protection type allows you to
limit the number of requests that are allowed to run on the server based
on the amount of free memory when the request is initiated. The
following settings are available to configure Web Request Memory Protection:

|Configuration|Description|Default|
|--- |--- |--- |
|WebRequest Memory Protection Threshold|This specifies the threshold value for the amount of free memory on the server. If a new request occurs and the free memory is below the indicated percentage then the selected survival strategy will be triggered. Leave blank to disable feature.|Never|
|Minimum Condition Duration|Specifies the minimum time that the memory condition must hold before this protection becomes active. If a new request occurs and the free memory had been below the  Memory Protection Value for the at least the minimum time specified, the selected Memory Protection Strategy will be triggered. The default value is 10s.|30 Seconds|
|Memory Protection Strategy|This defines what happens when this protection type is triggered. The individual survival strategies are defined as follows: <br> <br> Reject (with Email Notification): Reject any new requests until the protection trigger has recovered. Optionally sends an email notification. <br> <br> Queue (with Email Notification): Store requests until the protection trigger has recovered or until they timeout and are Aborted. (See Survival Strategy settings.) Optionally sends an email notification. <br> <br> Email Notification Only: Send an email notification but take no further action. <br> <br> Email Notifications need to be enabled in Email Settings before any notification emails will be sent.|Email Notification Only|
|Enable Automatic Garbage Collection Trigger|If enabled, causes FusionReactor to trigger a garbage collection once the threshold specified in WebRequest Memory Protection Threshold has been reached.|Enabled|
|Minimum Garbage Collection Interval|Specifies the minimum interval, in seconds, that FusionReactor will trigger a garbage collection. FusionReactor won't trigger a collection any more often than this value.|10 seconds|

#### Automatic Garbage Collection

FusionReactor can trigger automatic garbage collection when the **Memory
Protection** detects a marginal memory condition.  The exact margin used
is specified in **WebRequest Memory Protection Threshold**.  When memory
usage exceeds this threshold, FusionReactor starts to trigger automatic
garbage collection.  This is independent of the **Minimum Condition
Duration, **which is still used to trigger the **Memory Protection
Strategy.**

Once inside the memory margin, FusionReactor will trigger a garbage
collection, but not more often than the **Minimum Trigger
Interval **value. 

This functionality was added in order to make memory tracking more
accurate.  Newer Java Virtual Machine garbage collectors tend to
aggressively demand memory, but are quite reluctant on returning it to
the operating system.  They also tend to run the garbage collector
infrequently.  This makes tracking used memory inaccurate, since there
is usually a quantity of memory (sometimes a *significant* quantity)
which is unused, but which the garbage collector has not yet freed.

!!! note
    If you disable this option, be aware that any **Reject**, or **Queue** strategy **may** be operating on requests which could otherwise have run, had the GC been run to free unused memory.

### WebRequest CPU Protection

This section provides settings to configure WebRequest CPU Protection on
your server. This protection type allows you to
limit the number of requests that are allowed to run on the server based
on the amount of used instance CPU when the request is initiated. The
following settings are available to configure Web Request CPU Protection:

|Configuration|Description|Default|
|--- |--- |--- |
|WebRequest CPU Protection Threshold|This specifies the threshold value for the amount of used instance CPU on the server. If a new request occurs and the instance CPU is above the indicated percentage then the selected survival strategy will be triggered. Set to 100% to disable the feature.|Never|
|Minimum Condition Duration|Specifies the minimum time that the CPU condition must hold before this protection becomes active. If a new request occurs and the instance CPU had been above the CPU Protection Value for the at least the minimum time specified, the selected CPU Protection Strategy will be triggered. The default value is 30s.|30 seconds|
|CPU Protection Strategy|This defines what happens when this protection type is triggered. The individual survival strategies are defined as follows: <br> <br> Reject (with email notification): Reject any new requests until the protection trigger has recovered. Optionally sends an email notification. <br> <br> Queue (with email notification): Store requests until the protection trigger has recovered or until they timeout and are Aborted. (Learn more: Survival strategy settings.) Optionally sends an email notification. <br> <br> Email notification only: Send an email notification but take no further action. <br> <br> Email notifications need to be enabled in email settings before any notification emails will be sent.|Email notification only|

### Protection restrictions

|Configuration|Description|Default|
|--- |--- |--- |
|Restrictions|From here you can enable or disable the Protection Restrictions feature. When restrictions are enabled you can define which pages will be run through the Crash Protection system and which will be left to run normally. You can define individual restrictions on the Restrictions page.|Enabled|
|Behavior|This value defines how Protection Restrictions behave. <br> <br> Protect Matching Requests - No requests will be subject to protection (they will never be aborted or timed out) unless they are matched by a Restriction rule as defined on the Restrictions page. <br> <br> Exclude Ignore Requests -  All requests will be subject to protection (they may be aborted or timed out) unless they are matched by a Restriction rule, in which case they will not be touched by Protection under any circumstances as defined on the Restrictions page.|Ignore matching requests|

### Survival settings

The survival strategy is how FusionReactor will attempt to self-heal the
situation if crash protection is triggered. It can be configured to kill
problem requests and queue new requests until the situation is
stabilized. It can also alert you via email so that you have time to
resolve the problem if you need to take action.  

|Configuration|Description|Default|
|--- |--- |--- |
|Abort Strategy|When a survival strategy is set to **Reject** or **Abort**, you have two ways of handling rejected or aborted requests: <br> Display Message will simply show the specified message to the user. Redirect to URL will send the user to the URL specified. Please note that redirects may not work when a page has already sent data to the browser.|Display Message|
|Abort Strategy value|This is the value that will be used when an **Abort** or **Reject** occurs. If the Abort Strategy is set to Display Message, then enter the message to be displayed to the user when the page they have requested has been aborted. If the Abort Strategy is set to Redirect to URL, then enter the URL that you wish the user to be redirected to when the page they have requested has been aborted.|Request aborted by the server due to heavy system load.|
|Add Parameters|After an abort, if you Redirect to URL then this option defines whether FusionReactor will add extra parameters to your URL so you can see exactly what happened. If you enable parameters the URL will include the following: <br> <br> detection_method - This is the type of Crash Protection which fired. It will be one of: "freemem", "requests", or "timeout" <br> <br> threshold_value - This is the threshold value associated with the type of Crash Protection, as defined earlier on this page. <br> <br> actual_value - This is the actual value which caused the Crash Protection to fire. <br> <br> source_url - Contains the URL sent on the original request e.g. http://127.0.0.1/test.cfm  (since 3.0.1) <br> <br> source_url_params - Contains the URL parameters sent on the original request (since 3.0.1) <br> <br> source_method - This is the HTTP method used on the original request e.g. GET, POST (since 3.0.1) <br> <br> start_time - This is the start time of the request from Epoch e.g. 1209376581900 (since 3.0.1)|Enabled|
|Queue Timeout (Request Abort) (seconds)|If a request is queued due to Protection, this value represents the longest amount of time that the request will be held before FusionReactor abandons it. The default value is 60 seconds.|60 seconds|
|Handling for Requests with Internal Locks|If a transaction holds an ownable synchronizer (a special type of Java lock - more info here), Protection will, by default, refuse to kill it. This setting enables Protection to kill these threads. <br> <br> Using the Kill Thread functionality manually always attempts to kill threads, regardless of this setting. <br> <br> Warning: If your J2EE engine or application uses ownable synchronizers to serialize access to data, and FusionReactor attempts to kill threads holding these synchronizers, they are not automatically released. <br> <br> This is different to the behaviour of monitor synchronization, which was available in Java prior to Java 5 (and still is). It is relatively safe to kill threads holding the latter type of lock, as the virtual machine will automatically release them. The newer ownable synchronizer are not released automatically. <br> <br> If this option is disabled, FusionReactor will add a tab to the Request Details page called Transit - Locks which tells you which locks were present when a kill was attempted but not carried out. If this option is enabled, FusionReactor will still add the tab, but will proceed to the kill as in previous versions. Depending on the actual usage of these synchronizers, this may cause the system to exhibit instability later.|Don't kill|

### Protection logging

|Configuration|Description|Default|
|--- |--- |--- |
|Logging|If Protection Logging is enabled then Protection information will be written to the Protection Log. If **Disabled** is chosen then Protection information will not be written to the Protection Log.|Enabled|
|View Size (KB)|This value indicates how much of the log file should be displayed when you view the Protection Log from inside FusionReactor.|128 KB|
|File Size|If the Logging Engine is set to **Centralized Archive and Rotation** then this field does not appear. However, if the Logging Engine is set to **Traditional Per-Log Rotation** then this value dictates then maximum size of the log before it is rotated.|10240 KB|
|File Count|As above, this value dictates the number of files held in the log history. An incoming log causes the oldest log to be deleted.|5|

### Email settings


Email notifications need to be enabled in [Email
Settings](../Settings/Main-Menu.md) before any notification emails will be sent.

|Configuration|Description|Default|
|--- |--- |--- |
|Notification emails|If enabled, and a Protection rule is set with email notification, Protection sends an email containing information about the state of the system and the actions Protection took.|Disabled|
|Protection email interval|The minimum time, in minutes, between protection emails. Any email which would be sent during this interval is inhibited.|1 Minute|
|Show SQL statement in email notification|If enabled, and Protection detects that an SQL statement is running during a rule execution, the text of that statement is included in the email.|Enabled|
|Maximum SQL Statement Length in email notifications|Specifies the maximum length of the reported statement. If the statement is longer than the value specified here, an ellipsis mark, "...", is appended to the text after that value to show that the statement has been truncated.|200|
|Show **User Agent** in email notifications|If enabled, the User-Agent header for web transactions is included in Protection email notifications. <br> <br> Due to the way Adobe ColdFusion 8 and 9 retrieve this header, it is not recommended to enable this option on those platforms. Doing so may cause system instability.|Disabled|
|Thread Stack Trace Should Consider| This settings tells FusionReactor which threads should be traced when an email is generated as a result of Protection action. Email is generated if Notification Emails is enabled, and no email has been generated within the Protection Email Interval period, and you have selected one or more Protection modes "with Email Notification." <br> <br> All Threads (default): all threads currently active in the JVM will be traced. This is the most comprehensive option. <br> <br> Threads with Open Transactions: all threads which currently have a transaction (e.g. a web request) running on them will be traced. <br> <br> No Threads: turns off trace collection completely. <br> <br> Since the collection of traces can take some time on systems with large numbers of threads (and/or deep stack depth per thread), users are encouraged to select an appropriate level of collection. While the Open Transactions setting provides a great balance between CPU-cost and informativeness, the All Threads setting can help you more if you suspect deadlocks are occurring.|All Threads|

