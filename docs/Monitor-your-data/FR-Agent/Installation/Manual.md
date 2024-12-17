# Manual installation of FusionReactor

Manually installing FusionReactor requires you to directly place the FusionReactor installation files and configure the JVM arguments on your application servers. 

!!! note
    Installing FusionReactor manually requires some knowledge of your application server configuration and can be completed in just a few minutes.

!!! tip
    For environments with VMs or containers like Hypervisor, Kubernetes, or Rocket, scripting the FusionReactor installation and automating deployment of the latest version is ideal.


## Installing FusionReactor

### **Step 1**: Create a directory structure for FusionReactor

To begin installing FusionReactor onto your application server, first create a directory structure for FusionReactor files to be stored within. This directory will contain your logs, configurations and installation files.

!!! warning
    Make sure the user running your application server has read and write permissions for this directory. Without these permissions, the server might not start, or it could fail to save logs and configurations.

 The recommended FusionReactor directory structure is ```{FusionReactor root}/instance/{Instance Name}```.

!!! tip
    You can use a unique name for your server, but make sure to remember it. 

Below is the recommended directory structure:

| Platform | Path|
|--- |--- |
| **Windows** | ```C:\\FusionReactor\Instance\myInstance``` |
| **Linux** | ```/opt/fusionreactor/instance/myInstance``` |
| **MacOS** | ```/Applications/FusionReactor/instance/myInstance``` |

### **Step 2**: Download the FusionReactor installation files
The installation of FusionReactor requires a Java agent to run the core FusionReactor product when your application starts.

There is also a Debug library that can be optionally added for use of the Debugger and Event Snapshot features. 

Download the **fusionreactor.jar** file and **Debug library**, [here](https://www.fusion-reactor.com/download-fusionreactor/).

![!Screenshot](/frdocs/Monitor-your-data/FR-Agent/Images/dlweb.jpg)

!!! tip
    We recommend installing this argument if you have a trial, ultimate or developer edition to access the full functionality of FusionReactor.


The debug library is a zip file containing the libraries for all supported platforms.

| Library | Platform |
|--- |--- |
| frjvmti_x64.dll | Windows |
| libfrjvmti_x64.so | Linux |
| libfrjvmti_x64.dylib | MacOS |

### **Step 3**: Place the FusionReactor installation files into the directory structure
With your directory structure configured, place the **fusionreactor.jar** and **debug lib** into your newly created instance directory.

!!! tip
    To make configuring the FusionReactor instance quicker, note down the exact path to these files for example: 
    C:\\FusionReactor\Instance\myInstance\fusionreactor.jar and C:\\FusionReactor\Instance\myInstance\frjvmti_x64.dll.

!!! note
    You only need to copy the debug library specific to your operating system.

### **Step 4**: Stop your application server

JVM arguments for your application server are only read when the server/JRE (Java Runtime Environment) is started. We recommend stopping your application server before adding or modifying any of your JVM arguments.

### **Step 5**: Add additional JVM arguments to your application server configuration

To run FusionReactor, you must add JVM arguments to initialize the FusionReactor installation files.

* Add a Java agent path (-javaagent argument) pointing to the fusionreactor.jar file.

* The Debug native library path (-agentpath argument) needs to be pointing to the debug library.

When entering the Java agent path, specify the address and name that the FusionReactor instance will use.

!!! tip
    The name should describe the application server FusionReactor is installed on, for example cf2018 or tomcat9.

The address should be the port and possible IP address of the FusionReactor instance, for example:

* address=8088 would bind FusionReactor to the address 0.0.0.0:8088 which is bound to all IP address

* address=127.0.0.1:8088 would bind to 127.0.0.1:8088 which is only accessible on localhost

Below are some examples of adding FusionReactor to a java process that runs a jar file.

For a **comprehensive** list of example configurations:
!!! info "Learn more"
    [Configuration examples](/frdocs/Monitor-your-data/FR-Agent/Installation/Configuration-examples/)

!!! example
    #### **Windows:**
    ```batch
    java -javaagent:C:\FusionReactor\Instance\myInstance\fusionreactor.jar=name=myInstance,address=8088 -agentpath:C:\FusionReactor\Instance\myInstance\frjvmti_x64.dll 
    ```
!!! example
    #### **Linux:**
    ```bash
    java -javaagent:/opt/fusionreactor/instance/myInstance/fusionreactor.jar=name=myInstance,address=8088 -agentpath:/opt/fusionreactor/instance/myInstance/libfrjvmti_x64.so 
    ```

!!! example
    #### **MacOS:**
    ```bash
    java -javaagent:/Applications/FusionReactor/instance/myInstance/fusionreactor.jar=name=myInstance,address=8088 -agentpath:/Applications/FusionReactor/instance/myInstance/libfrjvmti_x64.dylib
    ```

In order to complete the installation of FusionReactor, you must restart your application server for the changes to the JVM arguments to take effect.

### **Step 6**: Start your application server
With your JVM arguments now modified, FusionReactor should start within the Java process.

To confirm this, view your application logs looking for the FusionReactor block as below:

```
INFO Fusionreactor: --------------------------------------------------------------------------------------
INFO Fusionreactor: FusionReactor - Copyright (C) Intergral GmbH. All Rights Reserved
INFO Fusionreactor: Revision: {version} fusionreactor.xxxxx.xxxxx
INFO Fusionreactor: Date    :  {date}
INFO Fusionreactor: Java    :  {JRE Version}
INFO Fusionreactor: OS      :  {OS Information}
INFO Fusionreactor: --------------------------------------------------------------------------------------
```

Typically this log is viewed in your catalina.log or ColdFusion-out.log files, but is dependent on your logging configuration. 