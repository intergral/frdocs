# Stdout.log and Stderr.log

When FusionReactor starts it begins intercepting java print messages
sent to System.out and System.err. System.out write operations go into
stdout.log and System.err operations go into the stderr.log.

This will not include print messages which are written by native
libraries. 

FusionReactor captures the stdout and stderr from the start of the
process but while FusionReactor is starting up it only will store up to
500 lines for each log to write into the FR log directory.   Once
FusionReactor has fully activated all write operations to System.out or
System.err will go into the corresponding log file unless turned off in
the [Log Settings](../Settings.md) page.
