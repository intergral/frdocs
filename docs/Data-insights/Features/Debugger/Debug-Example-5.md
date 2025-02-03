title: Example 5
# Debug Example : Filter on a specific IP Address in JSP/Servlet requests

This example is going to guide you through the creation of a breakpoint
with a Specific IP Address by the use of a jsp script.

```jsp tab="loop.jsp"

<%@ include file="/header.jsp" %>
<h1>Loop</h1>

<%
   String[] months = {"January","February","March","April","May","June",
   "July","August","September","October","November","December"};

   for( int i=0;i<months.length;i++)
   {
     out.println("The month is: " + months[i] + "<br>");
   }
%>

<%@ include file="/footer.jsp" %>
```

The **loop.jsp** script creates a new Array of Strings that contains all
the months of the year. The script is going to print out all the months
of the year from the Array.

## First Steps before the Breakpoint Configuration

1.  Install the jsp file into your application.
2.  If you know the source code directory, it is advisable to add that
    directory as a source inside FusionReactor.

3.  This can be done by accessing FusionReactor → Debug → Debugger →
    Click the initial add source link or Configure Sources.

4.  In the directory field of the configuration you should add the
    source code directory. If you do not have access to the source you
    will still be able to set and trigger and the breakpoint.

## Create a New Breakpoint

1.  Go to **FusionReactor → Debug → Debugger** and select **New
    Breakpoint.**
2.  Configure the breakpoint as below:  
    ![](/attachments/245553669/245553716.png)

3.  In the **Trigger** **Condition** field we have
    added **request.getRemoteAddr().toString().equals("IP Address")**.
    Instead of the IP Address String you should add your local IP
    Address or an External IP Address. 

|Production Debugger Field|Value|Meaning|
|--- |--- |--- |
|Breakpoint Trigger Location|Source File/Line Number|We are selecting to set a breakpoint within a specific source file and a specific line number|
|Source Code Filename|loop.jsp|Name / location of the file where the code is stored|
|Source Line Number|9|This is important.    If we are checking the value of a variable, then this variable must have been set before this line number has been reached in order for the breakpoint to fire.|
|"Trigger On" Condition|request.getRemoteAddr().toString().equals("127.0.0.1")|This is the example condition which will cause the breakpoint to fire and execution of the page to halt. The IP Address used here is an example.|
|Trigger Fire Count|Always|This indicates that the breakpoint will always fire.   If we set the Fire Count to a numeric value, e.g. 3  - then the breakpoint would fire 3 times.|
|Breakpoint Trigger Action|Enable Interactive Debugger - Pause Thread|Will tell FusionReactor to pause the currently executing thread when the condition has been met|
|Thread Pause Time (in seconds)|60|The thread will be paused for 60 seconds.   During this time, the breakpoint can be intercepted  by clicking on the Production Debugger icon - or from within the Paused Threads menu item|
|Thread Pause Execution|On every thread that fires the breakpoint|Will cause the engine to halt for every single thread in which the breakpoint condition fires.|


When the breakpoint has been set up, in the case that your page has not
yet been executed, you should be able to see the following:

![](/attachments/245553669/245553710.png)

![](/attachments/245553669/245553704.png)

In the case that your page has been executed, your breakpoint will look
like this:

![](/attachments/245553669/245553698.png)

![](/attachments/245553669/245553692.png)


## Fire a Breakpoint

In order for the Breakpoint to be fired, you need to execute the
**loop.jsp** script. The **Trigger Condition** will be fired and the
page will halt the execution.

If the breakpoint was fired, you should be able to see the Production
Debugger icon ![](/attachments/245553669/245553757.png)
on the top menu of FusionReactor. ![](/attachments/245553669/245553767.png)

You can either click on the **Debugger** icon or click the
**Debugger** link in the **Debug Menu: **you will then see the **Paused
Thread** - together with the **Timeout Countdown.** See screenshot
below.

![](/attachments/245553669/245553686.png)

To start the **Production Debugger** session, you need to click on the
Debug Icon: ![](/attachments/245553669/245553680.png)

## Change the IP Address to an External IP Address

In order to make the Production Debugger work under a specific IP
Address, you only need to change the **Trigger** **Condition** field
inside the **New Breakpoint** or **Edit Breakpoint **configuration.

For example, if you want to debug a jsp script that is not located in
your local machine but is located in a different IP Address, the
configuration of the breakpoint will need to be changed. In this
example, we are going to use 192.168.0.1. To change the **Trigger
Condition** to use this new IP Address, the breakpoint must be
configured as follows.

![](/attachments/245553669/245553674.png)
