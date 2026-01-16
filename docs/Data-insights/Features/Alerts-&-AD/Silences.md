Silences temporarily suppress alert notifications without stopping the alert evaluation process itself. Use them to prevent notification noise during known events, such as scheduled maintenance windows or active incident response.

### Suppressing Notifications: Silences vs. Mute Timings

While both  **Silences** and **Mute Timings** stop notifications from reaching your contact points, they serve different purposes. Importantly, neither method stops the system from evaluating alert rules or displaying active alert instances in the user interface - they only prevent the actual notification from being sent.

The table below highlights the key differences to help you choose the right tool:


### Comparison: Silences vs. Mute Timings

| Feature | Silences | Mute Timings |
| --- | --- | --- |
| **Setup** | Created independently and applied to alerts using **Label Matchers**. | Defined as "Time Intervals" and then linked to specific **Notification Policies**. |
| **Period** | Designed for **one-time** use with a fixed start and end time. | Designed for **recurring** schedules (e.g., every Monday or every weekend). |
| **Primary Use** | Ad-hoc incident response or unexpected emergency maintenance. | Scheduled maintenance windows or "off-hours" for non-critical alerts. |



### **How to Create a Silence**

A **Silence** allows you to temporarily stop notifications during specific windows, such as emergency maintenance or incident response.

1. **Open Silences:** Navigate to **Alerting** and select the **Silences** tab.
2. **Select Alertmanager:** Choose the appropriate Alertmanager from the dropdown (this determines which data sources the silence affects).
3. **Create New Silence:** Click **+ Create silence**.
4. **Set the Window:** In **Silence start and end**, select the dates and times for the suppression period.

    !!! tip
        You can also enter a **Duration** (e.g., `2h`), which will automatically calculate the end time for you.


5. **Define Matching Labels:** In the **Matching Labels** section, enter the specific **Label** and **Value** pairs to identify which alerts to mute.
* Example: Entering `severity` = `critical` will only silence critical alerts, while other alerts will still notify as usual.


6. **Add Comment (Recommended):** Enter a brief description explaining why the silence was created (e.g., "Replacing database server").
7. **Submit:** Click **Submit** to activate the silence.

!!! info "Learn more"
    [Edit & remove silences](https://grafana.com/docs/grafana/latest/alerting/configure-notifications/create-silence/#edit-silences)



