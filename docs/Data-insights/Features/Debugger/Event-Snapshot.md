## Event Snapshot

<iframe src="https://player.vimeo.com/video/847319269?h=3d705fc41b" width="640" height="363" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>

Event Snapshots are generated for specific events that may occur whilst
FusionReactor (FR) monitors your application.  Event Snapshots are
intended to provide deep level insight whenever a problem, such as an
exception or thread latency occurs. Snapshots are triggered
automatically. The Event Snapshot displays source code, scope variables,
stack trace and logging information at the point the problem occurs;
providing everything you need to isolate the issue as quickly and
efficiently as possible.   They fill the gap between simple error
tracking (stacktrace) and the full interactive debugger (allowing step
through control within your code and the ability to modify
variables).   

These are generated when:

- A log error call is made (and FR tracks it)
- An Exception occurs on the transactions and is tracked
- An error is caught in the ColdFusion error handler.

Event Snapshots require that the native Debug library is installed, as
this is the only API that allow us to interrogate the java local
variables on the callstack.  These snapshots contain variables and the
thread stack trace when specific events occur.    If you install FR
using the Automated installer, the native Debug library will
automatically be installed - otherwise, this library will need to be
installed manually.

## Rate Limiting
In order to reduce the amount of storage used for
Event Snapshots they are shared i.e if
you have 3 web requests which all have the same error they all share the
same event snapshot file. In this case the first WebRequest generates
the event snapshot file and the other 2 simply reference the original.  
This means that the UI could show variables which don't match the
current WebRequest because it was generated for a earlier WebRequest.  
This sharing of the event snapshot means that if you have a re-occurring
problem the generation is only performed once and all duplicates simply
reference the original. This drastically reduces the overhead of the
generate when transactions are failing in tight loops.

## Log Event Snapshots

FusionReactor captures the last n (100 by default) log messages of a
specific level or higher (defaults to ERROR).    By default we capture
ERROR log messages or higher from log4j, slf4j and apache commons
logging.   We **do not** track Java Util Logging.   [Exception Snapshots](#exception-snapshots) are
generated on the first log ERROR call.    This captures all the stack
variables and the call stack when this error is called.   This allows
the developer to know when a log error statement was triggered and why. 
See [Debug > Settings](Settings.md)

## Exception Snapshots

Event Snapshots can be generated when an error is tracked in FR.    When
an error occurs FusionReactor then remembers that this error caused a
page / transaction to fail.   The second time this exception occurs it
triggers an Event Snapshot to be generated.   This includes the
variables and stack at the time the exception is thrown.   Unlike the
place where the exception is raised to the user, this first chance
exception captures exactly the state that triggers the issue where the
Error tracking in FR only tracks when the error is passed all the way up
and shown to the user.

### Variable Capture

When an event snapshot is created it captures the local variables and
stack trace of a specific thread.   Variables are gathered for each call
stack frame unless they start with java, javax, sun or com.intergral.  
These 4 packages do not get any variables captured.

Local variables are captured at each applicable stack frame, these
variables that are captured will include all objects fields variables
and this continues down the variable / field hierarchy for up to 5
levels.

The event snapshot has a hard limit of 500 unique variables.  Once this
is hit no more variables will be captured.   Collections, Maps, Lists
and Arrays etc only track the first 5 objects in the data structure.   
If we don't limit these data structures they instantly hit the max
variable limit making the event snapshots pretty useless.

#### Why are Some Variables not shown...?

In this case the socket connect is in the low level code of java which
doesn't have any variables captured so I have to select the first stack
frame which has variables
(org.postgresql.core.v3.ConnectionFactoryImpl).   On the right you can
see exactly the variables which are being used to connect i.e. the
database = testdb, hostSpec = localhost:5432 and the user = nwightma. 
These objects can be expanded to show their fields.

If I select the stack frame which corresponds to my code I can see

![](/frdocs/Data-insights/Features/Debugger/images/245553125.png)

You can see that a lot of information appears to be missing, but simply
expanding the 'ds' field I can see :

![](/frdocs/Data-insights/Features/Debugger/images/245553120.png)


### Enabling Support for Event Snapshots

Event Snapshot (Exception) Support can be switched on by configuring the
following system property in the JVM arguments file:

```   
-Dfr.jvmti.enable.exceptions=true
```

Once enabled, Event Snapshots will be triggered when exceptions occur,
otherwise snapshot generation will not trigger on exceptions / errors.  

## ColdFusion Snapshots

ColdFusion Snapshots are snapshots fired specifically when an error is thrown within a CFM file within a tracked ColdFusion Application. These snapshots only fire when Exception support is unavailable

The Reason ColdFusion has an alternate way of tracking errors is that enabling Exception support could have a potential performance impact on the ColdFusion server. More information on this is available [here](Overview.md#exception-support).

With ColdFusion Snapshots variables are only available in the top stack frame, all other frames will appear grey and when clicked the variables section will display 'There is no content for this section.'

### Variables in CFCs

As variables are only captured in the CFM, any snapshot generated on an error in a ColdFusion component (CFC) will still only have the variables from the triggering request to a CFM.

For example:

```
component {
  function example(string var1) {
    foo = "bar";
    WriteOutput( arg );
  }
}
```

In the following code var1 would be a tracked variable if it was generated in the CFM, but foo would not be tracking in FusionReactor

In order th track variables for every stack frame including within and CFC's you must [enable exception support](#enabling-support-for-event-snapshots)

## User Interface

![](/frdocs/Data-insights/Features/Debugger/images/245553130.png)

Above is an example of the Event Snapshot UI.   This The *Event Snapshot* was
triggered from the second attempt to call postgresql.   The first
triggers an error to be tracked on a transaction, then the second call
triggers the event snapshot generation when the exception is first
thrown.

You can see its very similar to the Interactive Debugger UI.

The UI shows information at the top showing what caused the generation
and why.  In this example it's an exception being thrown.

The lower section matches the Interactive Debugger, showing the source
code, stack trace frames and variables (if any have been captured).  
