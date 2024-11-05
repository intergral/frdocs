

![!Screenshot](../../new-img/anomaly detection/anomalyreport.png)



## What is anomaly detection?

Anomaly detection is an algorithmic capability designed to recognize instances when a metric displays behavior that diverges from its historical patterns. This process considers trends, seasonal variations, and time-of-day patterns. It is particularly effective for metrics exhibiting robust trends and recurring patterns, which are challenging to monitor using threshold-based alerting systems.

<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/920397856?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="Understanding Anomaly Detection"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

In monitoring systems, potential anomalies can manifest across various vectors, with the most common examples including:

| Type         | Description     | 
|--------------|-----------|
| **Response delays** | Unexpected increases in server response time compared to historical measurements or anticipated benchmarks.|
|**Resource usage peaks** | Sudden spikes in CPU, RAM, disk, or network utilization during performance assessments.|
|**Transaction errors**| Elevated occurrences of errors like 500 (server errors) or 404 (not found) that were absent in prior tests.|
|**Connection limits** | Instances where the system reaches its maximum allowable concurrent connections, resulting in the rejection of new requests.|
|**Database replication errors** | Delays or failures in replicating data between clusters or servers.|
|**Sudden throughput reduction**| Decreases in the number of requests processed per second, even without reaching the system's theoretical maximum capacity.|


In summary, anomalies can emerge in various facets of system operation and can be categorized by their nature:

| Type         | Description     | 
|--------------|-----------|
|Outliers| Brief, minor irregularities that sporadically surface during data collection.|
|Event shifts | Systematic or sudden alterations relative to established patterns of behavior.|
|Drifts | Gradual, directionless, long-term shifts in data trends.|

Understanding and categorizing anomalies is crucial for effective system monitoring and troubleshooting.



## Benefits 

* **Early issue identification**: Anomaly detection helps identify deviations from normal behavior or patterns in data, allowing organizations to detect issues at an early stage before they escalate into significant problems.

* **Improved operational efficiency**: By automatically flagging abnormal events or behaviors, anomaly detection systems help streamline operations by prioritizing resources and attention where they are most needed.

* **Reduced downtime and service disruptions**: By proactively identifying anomalies, organizations can take preventive measures to address potential issues before they impact service availability or disrupt operations, minimizing downtime and service disruptions.

* **Enhanced security**: Anomaly detection can help organizations detect unusual or suspicious activities that may indicate security breaches or cyber attacks, allowing them to take prompt action to mitigate risks and protect sensitive data and assets.

* **Optimized resource allocation**: Anomaly detection enables organizations to optimize resource allocation by identifying inefficient processes, underutilized resources, or areas where improvements can be made, leading to cost savings and improved performance.

* **Data-driven decision making**: By providing insights into abnormal patterns or trends in data, anomaly detection empowers organizations to make informed decisions based on real-time information and actionable insights.

!!! info "Learn more"
    [Anomaly detection user guide](/Cloud/guides/Anomaly-Detection/ADuserguide/) 

![!Screenshot](../../new-img/anomaly detection/anomalyalert.png)

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.










