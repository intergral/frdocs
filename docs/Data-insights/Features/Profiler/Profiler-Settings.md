

**Profiler &gt; Settings** allows you to modify various elements and
behaviors relating to FusionReactor Profiler. The page is broken up into
sections, each containing a table explaining the options that can be
chosen in drop down boxes or input into text fields.

|Configuration|Description|Default|
|--- |--- |--- |
|Profiler Sample Rate|This defines how often the sampler runs (time in milliseconds). Default is to run every 200ms after the last sample completed.|200|
|Profile Slow Transactions|Enables or Disables the automatic sampling of slow transactions.|Enabled|
|Minimum Transaction Time|The minimum duration a transaction should be running for before the sampler automatically starts to sample it (time in milliseconds, 0 or empty means profile all transactions.).|3000|
|Maximum Profile Duration For A Transaction|The maximum duration that a single profile operation will continue before it stops when profiling a transaction. (time in milliseconds, leave empty for no limit)|60000|
|Maximum Profile Duration For A Thread|The maximum duration that a single profile operation will continue before it stops when profiling a thread. (time in milliseconds, leave empty for no limit)|60000|
|Exclude Packages|A comma or newline separated list of packages to exclude from the profile UI.<br> E.g.<br>java.lang<br>java.util|<Blank>|
|Minimum Samples For A Profile To Be Stored|Configure the minimum number of samples which need to have occurred for the profile results to be stored. Leave blank to store profiles|<Blank>|


### Profiler Sample Rate

This controls how quick the Profiler will attempt to sample the
transaction or thread once its started.  This can be 0 which means it
will run as quick as the CPU and JVM will support. The lower this value
is the more accurate the results will be but the profile information
tracked will be larger. 200ms is the default and will normally show most
real performance issues without using much memory.

### Profile Slow Transaction

This setting defines if the profiler should monitor slow transactions or
not. If this is set to disabled then no slow requests will be tracked
but you can still manually click profile on Threads or any Active
Requests.

### Minimum Transaction Time

This setting defines how long a transaction must have been running for
before the profile will consider it for profiling. If you have a 3000ms
transaction time the profiler may take up to 4000ms to start tracking
the transaction. The profile results will then include time till the
transaction ends or the Maximum Profile Duration until a transaction is
hit.

### Maximum Profile Duration For A Transaction

This setting defines the maximum time the profiler will sample this
transaction once the profiler has started.

### Maximum Profile Duration For  A Thread

This setting defines the maximum time the profiler will sample a single
thread once the profiler has started.

### Minimum Samples For A Profile To Be Stored

This setting defines the minimum number of samples that need to be taken
by the profiler for the profile to be stored.
