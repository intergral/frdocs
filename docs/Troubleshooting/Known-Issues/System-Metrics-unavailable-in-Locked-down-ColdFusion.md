# System metrics unavailable in locked down ColdFusion server

When running FusionReactor in a locked down ColdFusion server on Windows as per the CF lock down guide, the System Metrics menu icon is no longer visible within the user interface in FusionReactor.

!!! note
    This will affect any version of ColdFusion running on Windows server 2012 and above.

The reason you do not see the System Metrics is that FusionReactor was unable to load the library it uses to track the system metrics you would typically see in the System resources tab such as:

- Disk IO
- Network IO
- System Uptime
- Processor information
- Mounted drives
- Running processes

Without this library, we are unable to collect metrics, which would result in empty graphs, thus we hide the menu entry.

The reason we are unable to load the System Metrics library is due to the user ColdFusion recommends running ColdFusion with. In order to secure the application, Adobe recommends running the ColdFusion service as a Standard (Non-Administrator) User.

If you are seeing this issue, you will also see the following exceptions in the OSGI log of FusionReactor when the ColdFusion server starts:

````
2019-10-14 07:25:02.051 SEVERE [fr-system-monitor] [com.intergral.fusionreactor.system.monitor.osgi.internal.SystemMonitorComponent(425)] Failed creating the component instance; see log for reason
2019-10-14 07:25:02.053 WARNING [fusionreactor-core] [com.intergral.fusionreactor.pages.Toc(63)] Could not get service from ref [com.intergral.fusionreactor.plugin.caps.IUxTocContributor]
2019-10-14 07:25:02.054 SEVERE [fr-system-monitor] Error while starting System Monitor
2019-10-14 07:25:02.054 SEVERE org.hyperic.sigar.SigarPermissionDeniedException: Access is denied.
````

There is no workaround for this issue as it is caused by a known limitation between the library used to track System Metrics and the permissions of the user running the JVM.


!!! info
    These exceptions will have no negative effects for performance so can be ignored.

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist. 
