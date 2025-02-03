# Using monitored server scripts

FusionReactor Enterprise scripting enhances FusionReactor's Enterprise
monitoring to trigger configurable self-healing scripts when a server's
responsiveness status changes.

This feature can be used to perform any task launched from
a platform script.

!!! example "Examples might include:"

    -    Interacting with SNMP or enterprise monitoring/reporting systems
    -    Performing automated restarts of affected instances
    -    Sending custom email messages
    -    Writing custom log messages

Since FusionReactor Enterprise scripting is able to launch any platform
executable (shell script,executable binary etc.), it may be tailored to
virtually any environment.
 

!!!note

    To use this functionality at least **two** different instances of
    FusionReactor Enterprise are required.  A limitation of scripting is that a script should not be
    configured to run against the same server instance that FusionReactor is
    running in. If the server instance fails, then the FusionReactor running
    in this server instance may not be able to run the script, meaning it
    may not be able to restart itself for example.

## What are Enterprise scripts?
----------------------------

FusionReactor (Enterprise Edition) can trigger a script when a server
becomes unresponsive, and when it becomes responsive again. This
mechanism might allow you to pro-actively attempt to restart a failed
server or instance, integrate FusionReactor into an existing monitoring
environment or provide custom logging or reporting. Any program which is
runnable on your FusionReactor monitoring system may be used by an
Enterprise script target.

Enterprise scripts on Windows systems, are anything that is runnable as
a binary, or can be run from the command prompt, for instance:

-   Binary programs
-   Batch files

Enterprise scripts on Unix and Unix-based systems, this includes
everything you can start from a command line, for instance:

-   Binary programs
-   Shell scripts (including Bash, Ruby, Python and Perl)
-   Java programs (when launched from an appropriate shell script)

## How do I configure an Enterprise script?
----------------------------------------

Enterprise scripts are configured by editing the script of the server's
property page, accessible in the Enterprise -&gt; **Manage Server** page,
then clicking on the **Modify** icon of the required server. 

!!! tip 
    Take care to ensure the full path and filename to the script are correct.


It is recommended to only configure one script for a
server. If the same server has multiple scripts configured (for example
you have entered the server into the dashboard in multiple groups) or
you monitor the same server from different machines, then more than one
script may be launched at the same time if the server has problems. The
scripts may interfere with each other especially if they are trying to
restart the same instance.

## When does FusionReactor run Enterprise scripts?
-----------------------------------------------

Enterprise scripts are run whenever the Enterprise monitor detects that
a monitored instance has changed state:

-   an instance which was previously available is no longer providing
    Enterprise data
-   an instance which was previously unavailable has begun to provide
    Enterprise data

Scripts are run only if an instance changes state while it is being
observed. Additionally, scripts are only run if:

-   The Enterprise server alerting system is running
    -   This is configured in Enterprise Settings -&gt; Server
        Shutdown/Start Up Alerts
-   At least **On Shutdown** must be selected.
    -   If you wish to run scripts when an instance becomes available,
    **On Shutdown and Start Up** must be selected.
    -   If you do not wish to additionally receive email for these
        events, disable notification in FusionReactor -&gt; Settings
        -&gt; Email Server -&gt; Notification.

## How does FusionReactor run these scripts?
-----------------------------------------

### Launch mechanism

FusionReactor runs these scripts by spawning them using Java system
commands. The scripts will be run in the context of the user under which
your J2EE (ColdFusion) server runs. This user must have at least **read + execute** access to these scripts. Any files or other executables called by the script must also be accessible by this user.

The script will be run with the current working directory (CWD) of the
J2EE application server. Due to the variety of platforms available,
this may be unpredictable. Any scripts you write should therefore not
use the current directory notation (usually a single dot) to address
files. If you plan to access files within the script, their paths should
be specified completely.

### Script arguments

FusionReactor supplies several command-line arguments to the script.
These arguments may be used by the script to perform logging or restart
operations. 

!!! note
    These arguments are supplied by FusionReactor and
    you do not need to enter them in the script field on the Managed Servers
    page. 

The supplied arguments are (in order):

|Script parameter|Description|
|--- |--- |
|**UP or DOWN**|reflecting the instance status|
|**Instance Name**|as registered in the Manage Servers screen|
|**IP Address**|as returned from a DNS lookup of the machine name part of the URL used to monitor this instance|
|**Process ID**|If available, the process ID of the J2EE application server on the remote machine. If the FusionReactor native library is not available, or FusionReactor could not read this value, this field will be -1|
|**Last Seen Time**|The time, measured in milliseconds from midnight on January 1st 1970, which the server was last successfully polled for Enterprise data. If the server has not been observed as running during this session, this field will be -1|


### Logging

When FusionReactor fires a script, an appropriate message is written to
the [Crash Protection log](../Logs/Files/Crash-Protection-Log.md), located in
FusionReactor/instance/&lt;instance\_name&gt;/log/crashproteciton-0.log.
This log is shared with other Crash Protection messages, and not all
fields are used by Enterprise scripting.

For the exceptional cases **SCRIPTREADFAILED** and **SCRIPTEXCEPTION**,
FusionReactor will log the message associated with the exception to the
FusionReactor log.

## Operational impacts of scripting

There are a few points which you should bear in mind when configuring
scripting.

### System restarts & self-monitoring

If FusionReactor is configured to monitor itself, i.e. it is monitoring
the same instance in which it is configured, scripting should not be
used for operations.

In these circumstances, we recommend transitioning your environment to a
high availability monitoring solution. This entails installing a new
J2EE server (Tomcat, for instance), and installing FusionReactor into
that. This container will be used purely as a FusionReactor host, and
will be used to monitor other containers. It may be necessary to create
scripts which perform system reboots. Again, we recommend a careful
evaluation of the impacts of this type of script before implementation.
A script which restarts a system should not attempt to restart the
system on which the monitoring solution runs.

### Manual restarts

If a script is configured for a given instance, it will be fired when
that instance becomes unavailable. FusionReactor does not differentiate
between overloaded (or failing) instances, and instances which have been
deliberately stopped. Therefore, if you stop an instance manually,
through Windows' Services panel for instance, FusionReactor will fire
the configured script. 

As an operational matter, the affected instances
should be **offlined** from FusionReactor before being shut down. This
can be done within the Enterprise Dashboard, by clicking the (+/-)
button on the top right of server icon or from within Manage Servers by
selecting the Modify icon for the affected server, then changing its
Status to Offline. FusionReactor will not monitor these systems. 

When maintenance is complete, the servers should be **onlined** again by
reversing the process.

### Using the example scripts

We have provided several restart scripts to get you started. This
section will help you understand how to install and configure them.

#### Installation

The example scripts are provided in /FusionReactor/etc/cp/, thereafter
the structure is split into scripts which will run on Unix platforms,
and those which will run on Windows platforms. You are free to run these
scripts from this location, but we would recommend you copy these
templates before editing them. You will then always have a pristine copy
available for new scripts.

#### Worked example: Controlling Windows ColdFusion 8 from Windows

In order to get you started, we've provided you with a worked example.
In our example scenario, we will use a FusionReactor Enterprise Edition
instance on a ColdFusion 7 instance to monitor a ColdFusion 8
installation, also on Windows and running FusionReactor Enterprise
Edition.

#### Enterprise Dashboard

The first stage in preparing the environments is to ensure that both
systems are running smoothly, and the monitor is able to poll the target
system for enterprise data. Add the remote system to the monitor and
check that Enterprise Dashboard is retrieving information from it.

#### Script preparation

For this example, we'll be using the restart-Coldfusion8-OnWindows.bat
script from the FusionReactor/etc/cp/windows folder. For our example, we
copy the example script to a temporary folder, from where we can work on
it:

Copy restart-Coldfusion8-OnWindows.bat c:\\tmp

In order to customize the script, we open it in an editor. All provided
example scripts are commented extensively.

There are a couple of variables we must customize in the script:

-   We set the LOGFILE (line 43) to c:\\tmp\\script.log
-   We change the USER and PWD (lines 53 and 54 respectively) to reflect
    the Windows user with permissions to restart ColdFusion.

#### Adding the script to Manage Servers

The final step in the configuration is to add the script to the
monitored server's configuration. 

To edit the server's Enterprise Dashboard configuration:

* Click on Manage Servers.

* Select the edit icon of the monitored server.

* Enter the script location in the **Script** field.

#### Testing the script

The script can be tested by simply using the Windows Service control
panel to stop the monitored ColdFusion 8 service. Observing the script
log file c:\\tmp\\script.log file shows the output of the script. The
ColdFusion 8 service can be observed restarting in the control panel.

#### Conclusion

We've shown you how to configure Enterprise Scripting to restart a
ColdFusion 8 server. The scope for what scripts can do is immense, since
there are no restrictions on what they may call. It would be a simple
task, for example, to integrate FusionReactor into an SNMP monitoring
solution, write custom log messages or send SMS text messages.

Local Monitoring: Monitoring instances on the same computer as the Enterprise Monitor
-------------------------------------------------------------------------------------

Running all FusionReactor instances on the same computer makes it easy
to develop scripts for use with Crash Protection.

### Simple Watchdog

Two instances run on the same computer. One of the instances acts as an
Enterprise Monitor (Watchdog) for the other, monitored server. The
watchdog server has added the monitored server to the list of managed
servers in the Enterprise Dashboard of FusionReactor. A script for the
monitored server is configured that will be executed by the watchdog
server if the monitored server is unavailable or becomes available
again. The script is used to restart the monitored server automatically
after it became unavailable.

However, if the watchdog server itself becomes unavailable, the server
is not longer monitored and can not be restarted automatically any more.
To get around this the monitored server could also monitor the watchdog
server which is described in the next section.

### Cross monitoring

One instance/server is created for the task of Enterprise Monitor to
monitor the other Operational servers. Every operational server is added
to the Enterprise Monitor's list of managed servers in the Enterprise
Dashboard of FusionReactor. For every server a script is configured that
will be executed when the server becomes unavailable (or available
again). 

The script is used to restart the operational server
automatically if it becomes unavailable. One of the operational servers
is also configured to monitor the Enterprise Monitor, and a script is
configured to restart the Enterprise Monitor should it become
unavailable. 

In this way the Enterprise Monitor watches over all of the
operational servers, and one of the operational Servers watches other
the Enterprise Monitor. Alternatively a second Enterprise monitor could
be configured with the task of watching over the first Enterprise
monitor if you do not want operational servers to perform monitoring
tasks.

Distributed monitoring
----------------------

Running, monitoring and restarting FusionReactor instances in a
distributed environment requires remote connections between the
different machines. If a monitored server becomes unavailable this is
monitored by a different machine on the network. This machine then calls
a script which has to connect to the remote machine and restart the
remote server/instance. Depending on the operating system the
participating machines use, this can be done with (SSH) or some similar
technology.

### Simple watchdog

Two servers run on different machines that have a network connection.
One of the servers acts as the Enterprise Monitor (watchdog) for the
other, monitored server. The watchdog server has the monitored server
entered in it's list of managed servers in the Enterprise Dashboard of
FusionReactor. 

A script for the monitored server is configured that will
be executed by the watchdog server if the monitored server becomes
unavailable (or available again). The script is used to login to the
remote computer and restart the server/instance automatically after it
becomes unavailable. This approach can have the same drawbacks as
mentioned in the Local Server Simple Watchdog section before.

### Cross monitoring

All servers run on different machines that can reach each other over the
network. One instance/server is created for the task of Enterprise
Monitor to monitor the other Operational servers. Every operational
server is added to the Enterprise Monitor's list of managed servers in
the Enterprise Dashboard of FusionReactor. 

For every server a script is
configured that will be executed when the server becomes unavailable (or
available again). The script is used to login to the remote computer and
restart the operational server automatically if it becomes unavailable.

One of the operational servers is also configured to monitor the
Enterprise Monitor, and a script is configured to login to the
Enterprise Monitor computer and restart the Enterprise Monitor instance
should it become unavailable. In this way the Enterprise Monitor watches
over all of the operational servers, and one of the operational Servers
watches other the Enterprise Monitor. 

Alternatively a second Enterprise
monitor could be configured with the task of watching over the first
Enterprise monitor if you do not want operational servers to perform
monitoring tasks.

Summary
-------

FusionReactor Crash Protection Scripts are powerful functionality that
can lead to an increase of server availability in local as well as
distributed server environments.

!!!warning
    A script that is executed by a Crash Protection rule is executed by the
    server instance that is monitoring the problem server **not** by the
    problem server itself. If this is not the same computer, remote
    scripting has to be used to react to the situation in an appropriate
    way. 
    
!!! note 
    You should not use scripting in a single instance (self-monitoring) scenario, because the script may not reliably start.


___


!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.
