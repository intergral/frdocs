title: ColdFusion Line Perf

# FusionReactor ColdFusion Line Performance Profiler

The FusionReactor ColdFusion Plugin is able to profile the execution of
ColdFusion CFML at line level. This data can be used to identify
performance issues deep inside ColdFusion pages and components and can
be an invaluable tool for finding problems within your applications.
This feature also gathers information about the CFML code coverage which
can be very valuable when testing applications.

!!!warning "Performance Impact"
      Please note that this feature uses line number information generated
      by the ColdFusion Server that is known to be inaccurate in some cases
      and beyond our control. For this reason we cannot guarantee 100%
      accuracy of the information. Also note that the performance of the
      ColdFusion server may be impacted while tracking line
      performance profile data.

[Please see below for important considerations about using this feature
on Productions systems.](#considerations-for-production-systems)

### Getting Started

1.  You must have FusionReactor 6.0.4 or above  

2.  Go to FusionReactor-&gt;Plugins-&gt;Active Plugins  
    ![](/attachments/245547997/245548018.png")

3.  On the Active Plugins page choose the FusionReactor ColdFusion
    Plugin Configuration  
    ![](/attachments/245547997/245548028.png)
4.  On the Configuration page - Enable Track CFML Line Execution Times  

    ![](/attachments/245547997/245548008.png)

5.  Save the configuration - Note this will have immediate effect. When
    you enable CFML Line Performance Tracking the currently compiled
    templates have to be recompiled with instrumentation in them for
    collecting line metric information. This results in the ColdFusion
    template cache being emptied until the templates have been
    recompiled. Recompilation can be an expensive task and could result
    in an application stalling. Also note the compilation will take
    longer than normal with CFML Line Performance Tracking because the
    code must be instrumented heavily with metric gathering data.  
     
6.  We have written a simple tool in CFML that allows you to examine the
    performance of your ColdFusion application code on a line by line
    basis. The tool requires that you have FusionReactor installed and
    have enabled Track CFML Line Execution Times in the FusionReactor
    ColdFusion Plugin.  

    ![](/attachments/245547997/245548023.png)

    This tool can be found
    [https://github.com/intergral/cfperformanceexplorer](https://github.com/intergral/cfperformanceexplorer) in our GitHub repository.

7.  If you don't want to use the tool - then you can also get access to
    the data via the **FusionReactor API (FRAPI)**

With tracking enabled, FusionReactor captures the information about each
line of CFML code executed and stores the data internally. Using a
FusionReactor API you can gain access to this information and use it
generate reports about the performance of your code:

The following code will output the performance information for all of
the files that have been profiled:

```cfm
<h1>CFM Line Performance Tracking Tool</h1>
<cfset fragentClass = createObject("java", "com.intergral.fusionreactor.agent.Agent")>
<cfset sourceFiles = fragentClass.getAgentInstrumentation().get("cflpi").getSourceFiles()>
<cfloop from=1 to=#arraylen(sourceFiles)# index="i">
   <cfset sourceLineMetrics = fragentClass.getAgentInstrumentation().get("cflpi").getSourceLineMetrics(sourceFiles[i])>
   <cfoutput>
       <h2>
           Source: #sourceFiles[i]#: Code Coverage: #sourceLineMetrics.getCodeCoverage()*100#%
       </h2>
   </cfoutput>
   <cfoutput>
       <h4>
           Lines covered: #sourceLineMetrics.getCodeCoverageLineCount()# of #sourceLineMetrics.getTotalLineCount()#
      </h4>
   </cfoutput>

   <cfset lineMetricMap = fragentClass.getAgentInstrumentation().get("cflpi").getLineMetrics(sourceFiles[i])>
   <cfset sortedKeys = createObject("java", "java.util.TreeSet").init(lineMetricMap.keySet()).iterator()>
   <cfloop condition="sortedKeys.hasNext()">
      <cfset entry = sortedKeys.next()>
      <cfset lineMetric = lineMetricMap.get(entry)>
      <cfset lineNumber = lineMetric.getLineNumber()>
      <cfset count = lineMetric.getCount()>
      <cfset nanoTime = lineMetric.getNanoTime()>
      <cfoutput>
          <ul style="margin: 0">
          #sourceFiles[i]# #lineNumber#: Count: #count#, Time: #nanoTime#, Average: #nanoTime / (count eq 0 ? 1 : count)#
          </ul>
      </cfoutput>
   </cfloop>
</cfloop>
```

### Considerations for Production Systems

The following points must be considered when enabling and disabling this
feature on production systems:

1.  Enabling or disabling CFML Line Performance Tracking will result in
    the ColdFusion Template and Component caches being
    emptied, requiring a complete recompile of your application code
    which may be very time consuming and will impact the performance of
    your application abruptly and immediately
2.  Under production load, the ColdFusion server may not be able to
    recompile the code fast enough to keep up with user load, resulting
    in requests waiting and your application could stall completely. 
3.  CFML Line Performance tracking can be an expensive action as every
    single execution of every line of code by every request/thread is
    tracked. Under production load, when you have a lot of
    requests/threads running (potentially the same code) the performance
    of the application may be too heavily impacted for this feature to
    be enabled. The granularity of the data capture that this feature
    requires may mean that your server does not have enough cpu capacity
    left to meet both the production application's load and the line
    performance tracking requirement at the same time. 
4.  The overall performance of the application can be heavily impacted.
    The performance impact of this feature ranges typically between
    2-10% but can be much higher depending on the code being executed.
5.  Configuring fewer simultaneous requests in ColdFusion may mitigate
    these affects in some cases.
