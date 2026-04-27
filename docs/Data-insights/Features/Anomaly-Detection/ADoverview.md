# Anomaly detection

Anomaly detection automatically identifies when a metric behaves differently from its historical patterns, taking into account trends, seasonal variations, and time-of-day patterns. It is particularly effective for metrics with recurring patterns that are difficult to monitor using threshold-based alerting alone.

## What anomaly detection can identify

| Type | Description |
| --- | --- |
| **Response delays** | Unexpected increases in server response time compared to historical baselines. |
| **Resource usage peaks** | Sudden spikes in CPU, RAM, disk, or network utilization. |
| **Transaction errors** | Elevated occurrences of 500 or 404 errors not present in prior patterns. |
| **Connection limits** | The system reaching maximum concurrent connections and rejecting new requests. |
| **Sudden throughput reduction** | Decreases in requests processed per second without reaching theoretical capacity. |

Anomalies generally fall into three categories:

| Type | Description |
| --- | --- |
| **Outliers** | Brief, minor irregularities that sporadically surface during data collection. |
| **Event shifts** | Sudden alterations relative to established patterns of behavior. |
| **Drifts** | Gradual, long-term shifts in data trends. |

## On-premise alternative

For on-premise FusionReactor, **[Crash Protection](/Data-insights/Features/Crash-protection/Crash-Protection/)** provides threshold-based alerting for slow requests, high memory, and CPU conditions.

!!! tip "Full anomaly detection available in OpsPilot"
    **OpsPilot** provides AI-powered anomaly detection across metrics, traces, and logs with automatic alerting and no threshold configuration required.
    [View OpsPilot docs](https://docs.opspilot.com) or [start a free trial](https://app.opspilot.com)
