# Post crash troubleshooting with FusionReactor


When a server crash occurs, **FusionReactor** provides a comprehensive suite of tools to help investigate and troubleshoot the incident. These tools help identify the likely cause of the crash using real-time and historical data.

<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/1087998954?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write; encrypted-media" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="Post Crash Troubleshooting and Preemptive Planning with FusionReactor"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

## FusionReactor Cloud platform

The **FusionReactor Cloud** platform offers several capabilities that assist in post-crash analysis:

### Data retention
- **Metrics** are retained for **13 months**.
- **Traces and logs** are retained for **30 days**.
- Unlike On-Premise, Cloud retains data persistently, avoiding the loss of critical crash-time data.

### Viewing historical data
- Select a **server** in the Cloud interface.
- Use the **orange live mode clock** to toggle
- Applies to:

    - **Metrics tab**
    - **Saved in Cloud** section of:

        - Web Requests
        - Transactions
        - JDBC Tabs

### Explore & Logging sections
- Navigate to **Explore** and **Logging** sections.
- Use the **time-frame dropdown** for detailed visualization control.

!!! info "Learn more"
    [Explore](/Data-insights/Features/explore/) | [Logging](/Monitor-your-data/Log-monitoring/overview/)

### Dashboards
- Access relevant **Dashboards** from the list.
- Adjust time-frames using the **dashboard window dropdown**.
- Refine views using **labels at the top left** to narrow the data set.


!!! info "Learn more"
    [Dashboards](/Data-insights/Features/dashboards/) 


### Anomaly Detection (Cloud AI Plan Only)
- Monitors **R.E.D. metrics**:

    - **Rate**
    - **Error**
    - **Duration of requests**

- Sends alerts via **email or other subscriptions** when anomalies are detected.
- **Sensitivity** of detection is configurable.

!!! info "Learn more"
    [Anomaly Detection](/Data-insights/Features/Anomaly-Detection/ADuserguide/) 

## FusionReactor On-Premise tools

All Cloud users also have access to the **On-Premise** tools, which offer deeper control but may require additional setup.

### Crash Protection
- Allows alert setup for:

    - Long-running requests
    - High request volumes
    - CPU and Java memory usage

- Requires configuration of **Email settings**.
- Known long-running requests can be **excluded** to avoid false positives.

!!! info "Learn more"
    [Crash Protection](/Data-insights/Features/Crash-protection/Crash-Protection/) 


### JDBC Logging
- Useful for database-related troubleshooting.
- Enable via:

    - Navigate to **JDBC > Settings**
    - Set **JDBC Logging** to **Enabled**

- Logs messages for every JDBC request.
- Logging can be **customized** per environment.

!!! info "Learn more"
    [JDBC](/Data-insights/Features/JDBC/Settings/) 

### Archive Viewer
- Located under **Logging > Archive Viewer**.
- Allows browsing of stored logs and metrics.
- Set **date and hour** at the top left to inspect a specific period.
- Similar to Cloud’s **Server** and **Explore** views.
- Retains data for up to **30 days** by default.
- Retention can be modified under **Log Archive Settings**.

!!! info "Learn more"
    [Archive Viewer](/Data-insights/Features/JDBC/Settings/) 


FusionReactor offers powerful Cloud and On-Premise tools that provide a **holistic view** of system behavior before and during a crash. By using features like Anomaly Detection, Crash Protection, dashboards, logs, and metrics views, users can effectively **identify root causes** and minimize future downtime.
