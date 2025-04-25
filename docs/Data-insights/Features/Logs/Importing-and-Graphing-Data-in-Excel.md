# Importing and Graphing Data in Excel

Most FusionReactor Log files can be easily imported into Excel (and
other tools that can import delimited files) in order to analyze them or
create graphs.

There are several log files that you can be useful import and analyze:

-   [request.log](Files/Request-Log.md)
-   [resource.log](Files/Resource-Log.md)
-   [jdbc.log](Files/JDBC-Log.md)
-   [crashprotection.log](Files/Crash-Protection-Log.md)
-   [memory\[\*\].log](Memory-Logs.md)
-   [gc\[\*\].log](Files/Garbage-Collection-Logs.md)

If you are using the [FusionReactor ColdFusion Plugin](/frdocs/Data-insights/Extras/Plugins/FusionReactor-ColdFusion-Plugin/)
plugin then you will also have access to the following additional log files:

-   [dbpoolstats.log](/frdocs/Data-insights/Extras/Plugins/FusionReactor-ColdFusion-Plugin/#cf-stats)
-   [hitcountstats.log](/frdocs/Data-insights/Extras/Plugins/FusionReactor-ColdFusion-Plugin/#cf-hit-count)
-   [realtimestats.log](/frdocs/Data-insights/Extras/Plugins/FusionReactor-ColdFusion-Plugin/#cf-realtime)



## How To Import a FusionReactor Log File into Excel


1.  Make a copy of the log file you want to import. It's better to work
    on copies than the live log files otherwise you may stop them from
    being written to.
2.  Start Excel and from the \[**File**\] menu select \[**Open**...\]
    and then navigate to the log file. You may have to select **Files of
    type: All files (.)** to see the log files in the file picker.
3.  The **Text Import Wizard** dialog will appear
4.  For the Original data type choose: **Delimited** and then press
    \[**Next** &gt;\] at the bottom of the dialog
5.  Select **Space** as the Delimiter and then press \[**Finish**\] at
    the bottom of the dialog
6.  The Spreadsheet should now be filled with data in separate columns
7.  Click on top of one or more columns that you wish to graph (to
    highlight the entire column) and then click on the small graph icon
    **(Chart Wizard)**  in the toolbar (or from the menu
    \[**Insert**\]-&gt;\[**Chart**\]). Note you can find out what data
    the Excel columns contain by using the field number \[letter\] in
    the descriptions of the log files above.
8.  Choose the graph style (e.g. line graph, scatter graph or bar graph)
    and then click **Finish**.  
