title: Example 4
# Debug Example : Setting conditional breakpoint in catch block

For this Debug example, we will be setting a breakpoint in the catch
section of `try-catch` block. By doing this, we will only be triggering
our breakpoint when an exception has been thrown.

There will be two examples shown: one without using the **Condition**
field of the breakpoint, and one using this field to make it so the
breakpoint only triggers for certain types of exceptions.


We will be using the following file for both examples

```jsp tab="objectArrayExcep.jsp"
<%
Object[] objects = { "1" , "2" , null , true , "9999999999999999", Long.MAX_VALUE , "1.3" };
for( Object object : objects ){
  try {
    Integer.parseInt( (String) object );
  } catch ( Exception e ) {
    out.print( "Exception thrown of type " + e.getClass().getName() + " for object of value " + object + "<br/>" );
  }
}
%>
```

When this file executes through normally, we get the following output:

    Exception thrown of type java.lang.NumberFormatException for object of value null
    Exception thrown of type java.lang.ClassCastException for object of value true
    Exception thrown of type java.lang.NumberFormatException for object of value 9999999999999999
    Exception thrown of type java.lang.ClassCastException for object of value 9223372036854775807
    Exception thrown of type java.lang.NumberFormatException for object of value 1.3

As you can see, we regularly have 5 exceptions being caught, of which
there are two alternating types: `NumberFormatException` and
`ClassCastException`.

## Unconditional Breakpoint in catch block

For this example, we will use a breakpoint with the following
configuration:

![](/attachments/245553613/245553636.png)

|Production Debugger Field|Value|Meaning|
|--- |--- |--- |
|Breakpoint Trigger Location|Source File/Line Number|We are selecting to set a breakpoint within a specific source file and a specific line number.|
|Source Code Filename|objectArrayExcep.jsp|Name / location of the file where the code is stored.|
|Source Line Number|7|The number of the line we wish to pause on. Note: This line must have executable code on it, otherwise the breakpoint will be invalid.|
|"Trigger On" Condition|||
|Trigger Fire Count|Always|This indicates that the breakpoint will always fire. If we set the Fire Count to a numeric value, e.g. 3  - then the breakpoint would fire 3 times before disabling itself.|
|Breakpoint Trigger Action|Enable Interactive Debugger - Pause Thread|This will tell FusionReactor to evaluate the condition and, if true (default true if not set) pause the currently executing thread on reaching the line number.|
|Thread Pause Time (in seconds)|60|This will pause the thread until 60 seconds has expired. If we enter Interactive Debugging on the thread, the thread will instead pause until resumed in Debugging.|
|Thread Pause Execution|Only on one thread at a time.|This will cause only one thread to be paused by the engine for this breakpoint condition.|


### Interactive Debugger View

When this breakpoint is triggered for the page with the code above, we
will get **5 pauses** on **line 7** for each exception that is caught
within the looped `try-catch` block.

!!!Note
    for this example, there is a copy of objectArrayExcep.jsp in
    the /opt/ directory. I have configured this as a source, so
    FusionReactor displays that while viewing the paused thread's details.

![](/attachments/245553613/245553618.png)

### Conditional Breakpoint in catch block

The caught exception variable must be called at some point in your code
or may be optimized away during compilation, meaning the Exception
variable may not exist.

Suppose that we do want to worry about debugging on
`ClassCastException` but instead only want to pause in the catch block
for `NumberFormatException`**.**

We can do this by adding a **Condition** to the breakpoint. Conditions
are written in the Groovy scripting language (for .jsp and Java classes)
or ColdFusion scripting language (for any ColdFusion file extension
locations). For our **`objectArrayExcep.jsp`** example, we would do the
following:

![](/attachments/245553613/245553624.png)

This means that the breakpoint will trigger on line 7 if the variable e
is of class type `NumberFormatException`.

Therefore, for our new breakpoint we would **only get 3 pauses**, all
for `NumberFormatException` cases.

This can be used in combination with any trigger type ( for example,
emails ) to tailor the breakpoint to the cases you are more concerned
about.
