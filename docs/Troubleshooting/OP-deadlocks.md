# How to detect deadlocks in on-prem

The [FusionReactor deadlock plugin](https://docs.fusion-reactor.com/Plugins/FusionReactor-Deadlock-Plugin/) polls all Java threads running in the JVM that your server is running on every 30 seconds. Any Java thread deadlocks detected are written to a log file (deadlock.log, see below) and a notification (see below) is created for that particular deadlock. 

## Notification

If the plugin detects a deadlock a notification will be created. The notification contains information about the deadlock, this information can be used to determine how the deadlock occurred.

## Log file - deadlock.log

When a deadlock occurs the plugin generates a file called deadlock.log and populates it with information which can be used to determine how the deadlock occurred.


___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.