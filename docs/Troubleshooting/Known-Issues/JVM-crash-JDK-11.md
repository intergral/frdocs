# JVM crash in JDK 11

Due to a bug introduced in Java 11.0.1, some customers are seeing random crashes of their server with FusionReactor installed.

The bug in Java is an issue with the JIT compiler. It appears a somewhat random function in Java will fail to compile when an attempt to optimize the function is made. When this happens an exception occurs that terminates the JVM, taking down the Application Server.

Should this issue occur, a Java PID error file will be generated, similar to the one shown below:

!!! example
    ````
    # A fatal error has been detected by the Java Runtime Environment:

    #

    # EXCEPTION_ACCESS_VIOLATION (0xc0000005) at pc=0x00007ffa4d823808, pid=5556, tid=4372

    #

    --------------- T H R E A D ---------------

    Current thread (0x00000245e902c800): JavaThread "C2 CompilerThread0" daemon [_thread_in_native, id=4372, stack(0x000000eefa700000,0x000000eefa800000)]

    Current CompileTask:

    C2:20000256 43883 b 4 com.intergral.fusionreactor.plugin.ui.internal.pages.metrics.WebMetrics::buildCodeList (183 bytes)
    ````

This issue is ticketed under:

[JDK-8219894](https://bugs.openjdk.java.net/browse/JDK-8219894)

[JDK-8219807](https://bugs.openjdk.java.net/browse/JDK-8219807)

To work around this in FusionReactor, we added a system property that will disable the response code table within the web metrics page. This is required as a function that page uses is often unloaded from the JVM, causing the above issue.

The system property required to do this can be found below and should be added to your JVM configuration file:

````
    -Dfr.webmetrics.page.response.codes=false
```` 
___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist. 