# Profiler Example : Read a file, Create a new file and add a new lines

The ```Read_Create_Write_Example.cfm ```is an example where the script
reads a file named ```myFile1.txt``` and after that creates a new file
called ```myFile2.txt``` and adds a number of new lines.

## Read_Create_Write_Example.cfm
```cfm
<html>
    <head>
        <title>This is a read/write example of ColdFusion process</title>
    </head>
    <body>
        <cffile action="read" file="/opt/applicationservers/coldfusion/11.0/cfusion/wwwroot/Test/myFile1.txt" variable="Message">
        <cffile action="write" file="/opt/applicationservers/coldfusion/11.0/cfusion/wwwroot/Test/myFile2.txt" output="new line">
        <cfloop from="1" to="200000" index="i">
            <cfset s = gettickcount()>
            <cffile action="append" file="/opt/applicationservers/coldfusion/11.0/cfusion/wwwroot/Test/myFile2.txt" output="Did you add something?">
        </cfloop>
        </br>
        <cfoutput>
            This is the execution time: #s#  
        </cfoutput>
        </br>
        <h2> This is the end of the loop.</h2>
    </body>
</html>
```

Lets run that script and see the output in the Profiler.

## Profiler Results

When the script has been executed, we are going to find the transaction
in the **Profiled Thread History** tab. ( *See screenshot below* )

![](/frdocs/attachments/245552505/245552512.png)

Now lets take a deeper look into the transaction. ( *See screenshot below* )

![](/frdocs/attachments/245552505/245552517.png)

By viewing the screenshot, we can see that **75.1%** of the total
duration time was consumed by
the ```coldfusion.tagtext.io.FileTag.appendToFile``` function that was
used for appending the new lines to ```myFile2.txt```. ```The appendToFile``` function took that amount of
time because we are appending **19,999** new lines to the ```myFile2.txt```
file. The next most consuming method was
the ```java.io.PrintWriter.close``` that was responsible for writing
**19,999** new lines in the ```myFile2.txt``` file.
