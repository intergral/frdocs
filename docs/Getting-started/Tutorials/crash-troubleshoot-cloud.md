

# Post-crash Troubleshooting with FusionReactor Cloud

## Overview

This guide explains how to use **FusionReactor Cloud** to diagnose and prevent **application server crashes or performance degradation**. It walks you through identifying root causes using metrics, transaction traces, and logs, then shows how to implement proactive alerts to avoid future issues.

---


## Key features for crash investigation

| Feature               | Description                                                              |
| --------------------- | ------------------------------------------------------------------------ |
| **Historic Metrics**  | Retained for **13 months** — accessible even after server restarts.      |
| **Traces & Logs**     | Stored for **30 days** — detailed transaction-level visibility.          |
| **Anomaly Detection** | Uses R.E.D. metrics to automatically flag unusual application behavior.  |
| **Custom Alerts**     | User-defined thresholds for memory, CPU, latency, and uptime monitoring. |

---

## Example crash scenario

An application server (e.g., **Storefront 1**) is crashing or experiencing severe slowdowns intermittently. The goal is to:

1. Investigate potential causes using FusionReactor Cloud (e.g., memory leaks, CPU saturation, blocked threads, or DB issues).
2. Prevent future incidents using proactive alerting and anomaly detection.

---

## Step 1: Spot the issue

1. Open the affected server in **FusionReactor Cloud**.
2. Use the **Live Mode Clock** to select a custom time range (e.g., last 6 hours).
3. The time filter syncs across:

      * Metrics
      * Transactions
      * JDBC calls
      * Logs

### What to look for

* Examine **Heap Memory**, **CPU Usage**, **Thread Activity**, and **GC behavior**.
* Look for:

      * Sharp spikes or sustained high levels
      * A rapid drop (indicating a crash or restart)
      * Abnormal patterns leading up to the issue

---

## Step 2: Isolate the root cause

1. Navigate to the **Transactions** tab.
2. Select **Saved in Cloud** to access historical transaction data.
3. Sort by **Duration** to find slow or stuck requests.

### Signs of trouble

* Regular transactions (e.g., `Checkout`) taking longer than usual.
* Outliers (e.g., `Store Cache`, `Payment Gateway`) consuming excessive **memory, CPU**, or **thread resources**.
* High **database query time** or **JDBC connection pool exhaustion**.
* Correlation between transaction anomalies and metric spikes.

### Validate with logs

* Open the **Logs** tab or inspect your application/server logs
* Look for:
   
     * Exceptions (e.g., `OutOfMemoryError`, database timeouts)
     * Stack traces
     * Repeated errors leading up to the crash

* Match log timestamps to metric anomalies

---

## Step 3: Prevent future crashes

### Anomaly Detection (AI Plan)

Automatically detects abnormal behavior in:

* Request volume
* Response time
* Error rates

**Notifications via**:

* Email
* Webhooks (e.g., Slack, Microsoft Teams)

Sensitivity is configurable per environment or app tier.

### Custom Alerts

Use **Alerting & Thresholds** to define rules like:

* **Memory usage** > 80%
* **CPU usage** > 90%
* **Average response time** > 3 seconds
* **Thread count** or **GC pause time** exceeds threshold
* **Server offline** or **JDBC pool exhaustion**

Set up real-time alerts to trigger immediate action.

---

## Common crash indicators

Watch for these common early warning signs:

* **High heap or CPU usage** before a crash
* **Thread pool exhaustion** or blocked threads
* **GC pauses** lasting multiple seconds
* **Long-running DB queries**
* **Spike in error rates**
* Application logs with:

    * `OutOfMemoryError`
    * `StackOverflowError`
    * `Database timeout` or `Connection refused`

---

## Outcome

By following this process, you can:

* Identify and confirm the root cause of crashes or performance issues
* Correlate data across metrics, transactions, and logs
* Configure automated alerts to catch early warning signs
* Improve application uptime and user experience

## Video

!!! note
    The video below demonstrates post-crash troubleshooting using FusionReactor Cloud, with a focus on diagnosing a memory-related issue as an example scenario.

<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/1089031476?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write; encrypted-media; web-share" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="Investigating Server Crashes with FusionReactor Cloud"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>







