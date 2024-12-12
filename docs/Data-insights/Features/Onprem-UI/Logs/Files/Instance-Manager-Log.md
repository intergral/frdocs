# Instance Manager Log

The Instance Manager log outputs a lot of useful information regarding
the operations Instance Manager can perform. Information will be
outputted for server scanning, installations, configuring existing
servers, upgrading and any other Instance Manager function such as
starting/stopping.

### Status Log - (instance-manager.log)

The Instance Manager log is presented in the following format:

|Field Name|Number|Description|
|--- |--- |--- |
|Date|1|The date at which this log entry was written.|
|Time|2|The time at which this log entry was written.|
|Log Level|3|Log Level basically means the nature of the log, for example INFO means general information, where as ERROR means an error is being logged. SEVERE means something really bad has happened, this will be typically followed by the a generated exception.|
|Operation|4|Contains a message of an event that occurred such as start of Instance Manager procedures (install, scan, etc). As well as specific information that is useful when debugging your server if Instance Manager was to fail at an operation.|


### Additional Information:

If you are having trouble with Instance Manager, and the logs are not
giving you enough information, It may be a good idea to look at the logs
for your application server. It may the case where your application
server is not working or improperly configured, hence Instance Manager
will fail, and it will be unable to provide helpful information in its
log.
