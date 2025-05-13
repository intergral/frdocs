# Traces 

Traces depict individual execution flows within your application or service, commencing and concluding at specified points in your code. They meticulously record pertinent details, including timings, events, attributes, sub-routine executions, and custom data. This data is organized in a hierarchical tree structure that mirrors the execution flow of the underlying code logic.

While a trace typically signifies the isolated invocation of specific business logic, such as a request, its primary role is to function as a container for spans. These spans are intricately linked together under a unified identifier known as the trace ID. Each span encapsulates an individual step within the business logic.

To visualize your OTel traces, simply navigate to FusionReactor Cloud and  access the many features available such as the **Show Traces** dashboards, which gives you loads to get started with without needing any additional configuration. Alternatively, you can view your traces in **Explore** by accessing the dropdown located to the left of the screen and selecting **Traces**.

## Python example

!!! info
    The following example relies on a user having first [instrumented a Python application](/Monitor-your-data/OpenTelemetry/Instrumentation/Python/) to ship data to FR CLoud. 

In the FR Cloud **Explore** window, ensure the `Traces` datasource is selected. Using the `Search` query type, select `Resource Service Name = fib_by_iteration`. Click the blue spinner at the top left to execute the query. Several `fib-outer` spans should be returned. Click one to open the span split view, which should show the inner spans for that execution. Inner spans on the right can be clicked to open them, revealing more information - including the attribute we set in code: `iteration`.


![!Screenshot](/Monitor-your-data/OpenTelemetry/images/pythontraces.png)*Traces supplied by Python*