# Visualizing your logs

Logs in OpenTelemetry serve as the methodology for integrating logging information into observability, enriching it with additional telemetry data, and establishing connections with pertinent OpenTelemetry traces. To fulfill this purpose, log entries adhere to an abstract and generalized path, accommodating both unstructured text and structured information.

To visualize your logs, simply navigate to FusionReactor Cloud, in a browser and  access the many features available such as the **Log Browser** dashboard, which gives you loads to get started with without needing any additional configuration. Alternatively, you can view your logs in **Explore** by accessing the dropdown located to the left of the screen and selecting **Logs** from the dropdown or via the **Logging** tab.

## Python example

!!! info
    The following example relies on a user having first [instrumented a Python application](/frdocs/Monitor-your-data/OpenTelemetry/Instrumentation/Python/) to ship data to FR CLoud. 


In the FR Cloud **Logging** window, open the **Job** dropdown and select `fib_by_iteration`. All the log message emitted by the Python code appear.


![!Screenshot](/frdocs/Monitor-your-data/OpenTelemetry/images/pythonlogs1.png)*Logs supplied by Python*