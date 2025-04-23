title: Example 3
# Debug Example : Setting an email alert on first occurrence of an exception

Triggering email alerts from the debugger can be configured in 2 main
ways.  The first is to put a specific breakpoint on the source file and
line number.   This is ideal if you know that a specific catch block is
logging the error message or triggering some alert in your system.   The
second is on the exception class being thrown.  Both are explained in
this example.

The test cfm file we will use is :

```cfm tab="div0catch.cfm"
<cftry>
  <cfset y=0>
  <cfset x=1/y>
  Divide x <cfoutput>1/#y# = #x#</cfoutput>
  <cfcatch>
    <cfdump var=#cfcatch#>
  </cfcatch>
</cftry>
```

this triggers a divide by zero exception then catches it and dumps it
using `cfdump`.  This type of handling would hide result in no 500
response code and no error logged in FusionReactor.

## Exception email alerts by source file name and line number

By setting a breakpoint in the `cfcatch` block the debugger can trigger
an email alert once this happens. 

This is ideal if the code can cope with the error condition, but an
admin wants to know why this exception is occurring.

You can create the breakpoint by going to the **Debugger** page and
clicking the "**New Breakpoint**" button in the top right.

You should enter the configuration values as follows:

![](/frdocs/attachments/245553542/245553577.png)

Once you confirm this breakpoint, you should see a new breakpoint listed
in the breakpoint section of the debugger like this :

![](/frdocs/attachments/245553542/245553571.png)

The information button on the breakpoint will show the following
information.

Once the class is loaded and the location is valid it will change to
show the location where the breakpoint will fire.

![](/frdocs/attachments/245553542/245553565.png)

If you have executed the cfm page then it will appear like this :

![](/frdocs/attachments/245553542/245553559.png)

In this case, the information button on the breakpoint will show similar
information as below:

![](/frdocs/attachments/245553542/245553553.png)

If you now call the `div0catch.cfm` page in your browser you should
receive an email.  

!!!warning
    if you don't receive an email then you should check the
    mail settings, which can be done via the top menu → FusionReactor
    → Settings → Email Settings and in Debug → Settings → Email. Here you
    can verify that both have the correct configuration for sending these
    emails.

## Exception thrown

You can get the same information from the Exception Caught/Thrown
breakpoint type. You can set this by using the following breakpoint
configuration:

![](/frdocs/attachments/245553542/245553547.png)

When the exception occurs you will receive an email and then the
breakpoint will become disabled. The breakpoint will be disabled even if
the email sending is disabled in the top menu → FusionReactor → Settings
→ Email Settings or in Debug → Settings → Email.

## Results

In both cases you should get a Production Debugger Alert.

The main differences between the two emails are :

1.  The Exception Thrown hook will dump the stack trace of the exception
    being thrown (which normally matches the call stack of the thread,
    but doesn't necessarily have to).
2.  The title in the email is different as it shows the source of the
    alert (either the filename + line number or the exception message
    being thrown)

Both will show the variables of the exception, but the line number
breakpoint will show all the context of the page, whereas the exception
thrown email will only include the variables from the exception.   This
is because CF throws exceptions from inside its low level CF Functions
not the page itself.

## Example Results

This is an example of the results as sent
from the source file name and line number breakpoint:[FusionReactor
Production Debugger
Alert.pdf](/frdocs/attachments/245553542/245553598.pdf)

This is an example of the results as sent from the exception thrown
breakpoint: [FusionReactor Production Debug
Alert.pdf](/frdocs/attachments/245553542/245553583.pdf)
