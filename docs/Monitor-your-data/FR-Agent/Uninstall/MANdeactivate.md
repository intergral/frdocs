# Manual 

## Uninstalling FusionReactor

Deactivating FusionReactor requires removing both the Java agent path and Debug library path from your JVM arguments. Then remove the instance from the FusionReactor Directory.

To do this, follow the steps below:

### **Step 1**: Stop your application server

JVM arguments for your application server are only read when the server/JRE (Java Runtime Environment) is started. 

!!! tip
    Stop your application server before adding or modifying any of your JVM arguments.

### **Step 2**: Remove the JVM arguments for FusionReactor

In order to uninstall FusionReactor the following arguments must be removed:

* `-javaagent:{path}/fusionreactor.jar`
* `-agentpath:{path}/{debug library}`
* Any argument beginning with `-Dfr`

### **Step 3**: Start the application server
Once FusionReactor has been removed, restart the application server.

### **Step 4**: Remove the FusionReactor installation files (optional)

When FusionReactor is not running, the instance directory can now be removed from the local file system.

If you are using the default installation path, the instance directories are located at:

| Platform | Path|
|--- |--- |
| **Windows** | ```C:\\FusionReactor\Instance\myInstance``` |
| **Linux** | ```/opt/fusionreactor/instance/myInstance``` |
| **MacOS** | ```/Applications/FusionReactor/instance/myInstance``` |

!!! tip
    If you're uninstalling FusionReactor as it is not required at this time, skip this step to retain any log and configuration date when you reinstall FusionReactor.

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.
