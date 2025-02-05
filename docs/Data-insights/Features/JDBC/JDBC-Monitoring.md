# JDBC Monitoring

## Overview

FusionReactor JDBC Monitoring allows developers and administrators to
monitor and control the interaction between Java and a database.
FusionReactor allows fine-grained metrics and reporting of database
activity:

-   **Logging of statements which ran against a database**  
    This feature is useful to help detect deadlocks, view exactly what
    Statements look like without resorting to manual log output, and to
    see precisely how your Prepared Statements were bound before being run
    against the database.
-   **Row limiting**  
    The integrated row limiter can automatically halt database read
    activity after a user-specifiable number of rows is reached. This
    can stop run-away queries before they become a memory and resource
    problem.
-   **Notification and reminders**  
    The driver can optionally notify you when a certain number of rows
    has been read, and periodically thereafter. Using this feature, you
    are able to keep a clear overview about the volume of data being
    processed by Java.

FusionReactor automatically monitors existing JDBC requests and is able
to communicate metric data to FusionReactor for easy perusal.


## Options


The JDBC monitoring options allow you to control many aspects of how
FusionReactor tracks metrics from a data source including how to:

* Name a data source in FusionReactor
* Exclude a JDBC data source from FusionReactor

The options can be configured using JDBC URL parameters or the JDBC properties of a data source.

### \_\_fusionreactor\_name

Value*: string*  
Default*: empty*

If specified, the data source will report SQL metrics to FusionReactor
with the given name.  These names will be reported in the JDBC logfile
(or as an empty value if not set).  The name will also be reflected in
the JDBC tab of the Request Details page, allowing the user to
differentiate queries which ran against more than one datasource.  This
is useful when multiple databases are being used to aggregate results,
or when different drivers are being tested.

### \_\_fusionreactor\_exclude

Value*: boolean*  
Default*: false*

If true, the data source will NOT report SQL metrics to FusionReactor.

### \_\_fusionreactor\_rowLimit

Value*:  integer*  
Default*:  0 (disabled).*

This option instructs the FusionReactor to limit returned rows to the
given value.

After the application has retrieved this number of rows from the result
set, FusionReactor will discard any remaining rows.

### \_\_fusionreactor\_notifyAfter

Value*: integer*  
Default*: 0 (disabled).*

This option instructs the FusionReactor to output a notification after
'n' rows have been retrieved for the query.

### \_\_fusionreactor\_remindAfter

Value*: integer*  
Default*: 0 (disabled).*

This option instructs the FusionReactor to periodically output a query
reminder every 'n' rows.  If **notifyAfter** is specified, FusionReactor
will only begin reminding after the notification threshold has been
reached.  

E.g. notifyAfter=1000, remindAfter=100, actual rowcount 1350.  
Notification occurs at row 1000, reminders at 1100, 1200 and 1300.

### \_\_fusionreactor\_inhibitReformat

Value*: Boolean*  
Default*: false.*

When tracking queries, the FusionReactor will reformat them for logging
and presentation by attempting to make them fit on a single line. 

This allows logs to be viewed more easily, but may hinder developers who
are used to seeing queries formatted a certain way (as they are written
in a web page, for example).  Setting this option to 'true' stops
FusionReactor reformatting statement text, and allows multi-line
presentation in the FusionReactor interface and log.

### \_\_fusionreactor\_logToFusionReactor

Value*: Boolean*  
Default*: true.*

If set to true (the default) and the FusionReactor detects a running
FusionReactor instance, it will log the execution of a query to
FusionReactors 'jdbc-X.log' (where 'X' is the current rolling log
number). 

If this option is enabled and FusionReactor was *not* detected, it has
no effect.

### \_\_fusionreactor\_interpretObjects

Value*: Boolean*  
Default*: true.*

If set to true (the default), when a **PreparedStatement** attempts to
bind an **Object** type to a positional parameter using one of the
**setObject**(...) methods, FusionReactor will attempt to interpret the
data (for logging and reporting purposes only) by calling the
**toString()** method on the object.  This value will then be used in
the log and FusionReactor administrator, as if the application had
called a **setString**(...) method.  If the object does not override the
default **toString()** method, the default behavior is to return the
hash code of the object. 

If this parameter is false, the wrapper FusionReactor will use the
format

    {OBJECT java.class.name xyz}

where *xyz* is the .toString() representation.  This makes it clear that
the parameter is of type Object, but is perhaps less easy to read in the
log and the Administrator.

### \_\_fusionreactor\_autoCommit

Value*: Boolean  
*Default*: true*

If specified, the FusionReactor will turn off autocommit for all
statements from this data source, regardless of the current status of
autocommit, or the existence of any transactions.  This option must be
used with extreme caution as it alters the default behaviour of the JDBC
system, and is provided as a workaround to J2EE servers which require it
to be disabled.  We do not recommend using this option to defeat
autocommit.  After enabling this option, you must verify the atomicity
and transactional integrity of your application's JDBC statements.

 

How to specify the JDBC monitoring options
------------------------------------------

------------------------------------------------------------------------

### Adding data source properties

If you application server supports adding properties to the datasource,
you can configure FusionReactor's JDBC monitoring options by adding a
datasource property with the name of the option and the value as
required. This is the preferred way of configuring options.

### Altering the JDBC URL

If you application server does not support adding properties to the
datasource, you can configure FusionReactor's JDBC monitoring options by
altering the JDBC URL. 

Here's an example of a SQL Server JDBC URL, using the Microsoft SQL
driver, to which a couple of FusionReactor options have been added.

    jdbc:sqlserver://int0007:1433;databaseName=frtest;__fusionreactor_notifyAfter=1000;__fusionreactor_remindAfter=200;__fusionreactor_name=DataWarehouse

You can see that in this example, the notifyAfter, remindAfter and name
options have all been specified.  The databaseName option pertains to
the JDBC driver.


If you can add properties to the data source, it is the preferred over
changing the JDBC URL.


Different JDBC drivers use different delimiter characters between
arguments to the driver (common delimiters are ; & , : ). You must
specify the FusionReactor options using the correct delimiter for the
JDBC driver that you are configuring.

Excluding a data source from monitoring
---------------------------------------

------------------------------------------------------------------------

In some cases you may not want FusionReactor to monitor a JDBC data
source. To exclude a JDBC data source from being monitored, add
the\_\_fusionreactor\_exclude property to the datasource properties with
the value true.

If the application server does not support adding properties to the data
source, below is an example of how to exclude a data source from
monitoring by altering the JDBC URL (using the Microsoft SQL driver).

    jdbc:sqlserver://int0007:1433;databaseName=frtest;__fusionreactor_exclude=true

Sample JDBC URLs
----------------

------------------------------------------------------------------------

Here are a few examples of URLs, wrapped with the FusionReactor Driver
Wrapper.  This section is not an exhaustive reference on the syntax of
each URL - you should check the documentation for each individual
driver.  In general we recommend downloading and using vendor-specific
drivers if possible.  

### Oracle (Thin)

Using the Oracle Thin driver, with the name option (note that expanded
syntax is used so that FusionReactor options can be added):

    jdbc:oracle:thin:@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=192.168.1.56)(PORT=1521))(CONNECT_DATA=(SID=orcl)(__fusionreactor_name=orclthin)(__fusionreactor_rowlimit=12345)))

### Oracle (Macromedia)

Using the Macromedia driver, with the **notifyAfter** FusionReactor
Driver Wrapper option:

    jdbc:macromedia:oracle://int0234:1521;SID=testdb;__fusionreactor_notifyAfter=10000

### MySQL 4/5 (MySQL Commercial)

Using the MySQL commercial driver:

    jdbc:mysql://int00d6.intergral.com:3306/TestApp?tinyInt1isBit=false&__fusionreactor_name=mysqldb

### MySQL 5 Connector/J (MySQL)

Here's an example using the MySQL Connector/J driver, downloadable from
mysql.com.

    jdbc:mysql://int00d6.intergral.com:3306/TestApp?__fusionreactor_name=SQLServerDataSource

### MySQL (Macromedia)

Using the MySQL GJT driver, with the **inhibitReformat** FusionReactor
Driver Wrapper option:

    jdbc:mysql://int0003:3306/webshopdb?defaultFetchSize=400;__fusionreactor_inhibitReformat=true

### Microsoft JDBC Driver 4.0 for SQL Server (Microsoft)

Here's a URL using the Microsoft SQL Server 2005 JDBC Driver

    jdbc:sqlserver://int00d0:1433;databaseName=AdventureWorks;__fusionreactor_name=testdb

In this example, the username and password must be specified separately
during the connection process. Here's an example where the username and
password is specified in the URL:

    jdbc:sqlserver://int00d0:1433;databaseName=AdventureWorks;user=scott;password=tiger;__fusionreactor_name=testdb

### Microsoft SQL Server (Macromedia)

Using the Macromedia driver, with the **remindAfter** (we've named this
data source too):

    jdbc:macromedia:sqlserver://int0007:1433;DatabaseName=frtest;__fusionreactor_remindAfter=500;__fusionreactor_name=SQLServerDataSource

### DerbyEmbedded (Apache Derby)

The Apache Derby embedded database is an in-process (no separate server)
database.  When this database driver is loaded, the database is started
in the JVM process itself, a procedure which may only occur one time,
until the database is subsequently stopped.  You should
therefore **only **used this database with a wrapped datasource; you
should not mix wrapped and unwrapped access to this datasource.  If
you *do* mix these datasources, FusionReactor will attempt to share the
connection with the wrapped and unwrapped datasource - which works in
most cases - though this is an **unsupported configuration**.

This URL explicitly specifies the driver, together with its jar, and
the **autocommit** option - also explained at the link above.

    jdbc:derby:C:/ColdFusion10/cfusion/db/bookclub/;create=false;MaxPooledStatements=300;__fusionreactor_name=bookclubdb;__fusionreactor_autocommit=false


## Interpreting JDBC log data

When outputting data to the [JDBC log file](../Logs/Files/JDBC-Log.md) (which can
be found in FusionReactor's instance log directory), the FusionReactor
JDBC Driver Wrapper outputs a number of fields which can be used to
debug JDBC transactions and derive statistics about how the system is
using database resources.

The JDBC log file is space-delimited, with text fields (which may
contain spaces) enclosed with double-quotes.  We have had no trouble
importing this data into Microsoft Excel and OpenOffice Calc, as well as
Microsoft SQL Server using Data Transformation Packages.

The following list describes the meaning of each field.  The list
describes the fields in left-to-right order.  For field sources listed
as 'FusionReactor', this field may be empty **if** the request in which
the query ran has no associated FusionReactor tracked request.

### Calendar date

*Value: YYYY-MM-DD*  
*Source: Wrapper*

Specifies the calendar date on which the log message was raised.

### Time

*Value: HH:MM:SS*  
*Source: Wrapper*

Specifies the 24-hour time at which the log message was raised.

### Epoch time

*Value: long millisecond*  
*Source: Wrapper*

Specifies the exact epoch time (millisecond offset from midnight on
January 1<sup>st</sup> 1970 UTC) at which the log message was raised.

### Fusion Request ID

*Value: long integer*  
*Source: FusionReactor*

Specifies the FusionReactor request ID within whose execution this JDBC
interaction occurred.

### Thread

*Value: String*  
*Source: Wrapper*

Specifies the name of the thread in which this JDBC interaction
occurred.

### Client IP

*Value: dotted quad IP address*  
*Source: FusionReactor*

Specifies the IP of the client for whom this request is running.

### HTTP Method

*Value: HTTP 1.X Method (GET / POST / HEAD etc.)*  
*Source: FusionReactor*

Specifies the HTTP method of the request which caused this JDBC
interaction

### URL

*Value: Full or Partial URL*  
*Source: FusionReactor*

Specifies the URL which caused this request to run.  If FusionReactor is
tracking complete URLs (which machine name) this will be a full URL.  If
not, this will be the path element.

### Log Message Type

*Value: One of METRIC, NOTIFICATION or REMINDER*  
*Source: Wrapper*

Specifies the type of this message.  *METRIC* reports the completion of
a JDBC interaction, NOTIFICATION specifies that a Notification threshold
has been reached on the size of the result set, and REMINDER specifies
that a result set size reminder interval has been reached.

### Execution Start Time

*Value: long millisecond*  
*Source: Wrapper*

The start time in milliseconds from the epoch datum (see **Epoch Time**
above) at which the JDBC interaction began (i.e. the time at which the
statement was transferred to the database driver for execution).

### Execution End Time

*Value: long millisecond*  
*Source: Wrapper*

The time at which the underlying database driver finished executing the
statement.

### Result Set Close Time

*Value: long millisecond*  
*Source: Wrapper*

The time at which the result set was closed by the J2EE application
(e.g. ColdFusion etc.).  This interval between this time and the
Execution Start Time is useful as the total processing time for the
query, including database execution time and the time taken for the J2EE
application to fully read and process the result set.

### Execution Elapsed Time

*Value: long millisecond*  
*Source: Wrapper*

The time taken to execute the statement on the database (computed from
Execution Start and End times)

### Result Set Elapsed Time

*Value: long millisecond*  
*Source: Wrapper*

The time taken between sending the statement to the underlying driver
for execution, and the J2EE application actually closing the result set
(computed from the Execution Start time and the Result Set Close Time)

### Rows Read

*Value: long*  
*Source: Wrapper*

Specifies the maximum number of rows read by the J2EE application.  If
the statement is not a DQL command (select etc.), but rather is
DML/DDL/RIGHTS (insert/update, drop/alter/create, revoke/grant etc.)
this value will be 0.

### Is Prepared Statement

*Value: boolean*  
*Source: Wrapper*

Specifies whether this statement was prepared in advance of its
execution.

### Is Row Limited

*Value: boolean*  
*Source: Wrapper*

Specifies whether the Row Limiter activated to stop the query.

### Datasource Name

*Value:  String*  
*Source: Wrapper*

Specifies the name of the datasource (specified by the JDBC **name**
parameter). Blank if the name was not specified.

### Statement

*Value: SQL String*  
*Source: Wrapper*

Specifies the statement which was run during this interaction.  Any
whitespace formatting in the original statement is flattened to allow
the statement to appear on one line.  If the interaction was a batch
execution, individual statements are delimited by \[\[ and \]\] strings.

### Stack Elements

*Value: Comma-separated list of Strings*  
*Source: Wrapper*

If FusionReactor is configured to record stack traces, this field
contains a comma-separated list of stack frames, recorded when the query
completed.  If the debug information is available, this field can be
used to locate the exact line in a script or Java program which caused
the interaction.

### URL Parameters

*Value: String*  
*Source: FusionReactor*

Contains the parameters which were present on the URL associated with
the request in which this statement is running.

### Message

*Value: String*  
*Source: Wrapper*

For NOTIFICATION or REMINDER log messages, this field contains the text
of the notification or reminder.

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.