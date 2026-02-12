# Visualizing your metrics


Metrics offer ongoing visibility into numerical and statistical data, providing a constant stream of insights into the performance of your applications and services. For instance, metrics can reveal critical information such as the CPU utilization of a machine or the count of concurrent users at any given moment

To visualize your OTel metrics, simply navigate to the **Explore** tab in FusionReactor Cloud. Alternatively, create your own personalized dashboards to providing a tailored view of your application's OTel metrics.  

!!! info "Learn more" 
    [Create a custom dashboard](/Getting-started/Tutorials/create-dashboard/)

## Python example 

!!! info
    The following example relies on a user having first [instrumented a Python application](/Monitor-your-data/OpenTelemetry/Instrumentation/Python/) to ship data to FR Cloud. 

In the FR Cloud **Explore** window, ensure the metrics datasource is selected. Then either use the **Builder** to find
our metric (you can search for `job`: `fib_by_iteration`) or use the following in the **Code** search
mode: `fib_iteration_counter_total{job="fib_by_iteration"}`.
You'll get a graph and table of the metric.


![!Screenshot](/Monitor-your-data/OpenTelemetry/images/pythonmetrics.png)*Metrics supplied by Python*
