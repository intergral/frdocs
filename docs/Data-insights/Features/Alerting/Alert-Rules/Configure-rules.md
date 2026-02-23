Grafana-managed alert rules are the standard way to create alerts. They are based on the Prometheus model but offer extra flexibility, including:

* **Multi-source queries**: Pull data from different databases in a single alert.

* **Transformations**: Use expressions to manipulate data before it triggers.

* **Enhanced notifications**: Include images and advanced alert conditions in your messages.

* **Custom states**: Define specific behaviors for how alerts transition between firing and resolved.

!!! tip "Getting started"
    For quick-start tutorials on key alerting features, see [Getting started with Grafana Alerting tutorials](https://grafana.com/docs/grafana/latest/alerting/best-practices/tutorials/).


## How to Create an Alert Rule

1. **Name the Alert Rule** 

    Enter a descriptive and unique name in the **Name** field to identify the alert rule in your system.

2. **Define Query and Alert Condition**

    * Use the query editor to select your data source and enter your PromQL or metrics query.
    * Under **Alert condition**, define the threshold that triggers the alert (such as, `WHEN QUERY IS ABOVE 80`).
    * Use the **Preview alert rule condition** button to see a live visualization of when the alert would fire.

    !!! info "Learn more"
        [Advanced options](https://grafana.com/docs/grafana/latest/alerting/alerting-rules/create-grafana-managed-rule/#define-query-and-condition)

3. **Add Folder and Labels**

    * Select an existing folder or click **+ New folder** to organize your alert rule.
    * Click **+ Add labels** to include metadata (such as, `severity=critical`). These labels are used by **Notification Policies** to route the alert to the correct contact point.

4. **Set Evaluation Behavior**

    * Assign the rule to a group to define how often it is checked.
    * Set how long the condition must be met before the alert actually fires (such as, `5m`).
    * Optionally set **Keep firing for** to hold the alert in a firing state for a period after the condition resolves. This prevents noisy recovered/re-fired cycles for flapping metrics.
    * Use the **Configure no data and error handling** section to decide what happens if the query returns no data or fails to evaluate:

    | Scenario | Option | Behaviour |
    | --- | --- | --- |
    | **No Data** | No Data | Alert enters the **No Data** state. |
    | **No Data** | Alerting | Treat as if the condition was met — alert fires. |
    | **No Data** | Normal | Treat as healthy — no notification sent. |
    | **No Data** | Keep last state | Hold the previous evaluation result until data returns. |
    | **Error** | Error | Alert enters the **Error** state. |
    | **Error** | Alerting | Treat as if the condition was met — alert fires. |
    | **Error** | Normal | Treat as healthy — no notification sent. |
    | **Error** | Keep last state | Hold the previous evaluation result until the error clears. |

    !!! tip
        **Keep last state** is a safe default for transient issues (such as, a data source briefly going offline), as it avoids false positives. Use **Alerting** if you want to be notified any time data is missing or a query fails.

    !!! info "Learn more"
        [No data and error handling](https://grafana.com/docs/grafana/latest/alerting/alerting-rules/create-grafana-managed-rule/#configure-no-data-and-error-handling)

5. **Configure Notifications**

    * Choose which contact point should receive the notification.
    * Expand the **Muting, grouping and timings** section to apply specific mute timings or override default grouping behavior.

6. **Configure Notification Message**

    Add context to help the responder understand the issue:

    * Write a brief description of what happened (such as, "High CPU usage detected").
    * Provide more detail or potential troubleshooting steps.

7. **Save and Deploy**

    Once you have reviewed all sections, click the **Save rule and exit** button in the top right corner to activate the alert rule.

!!! info "Learn more"
    [Configure Grafana-managed alert rules](https://grafana.com/docs/grafana/latest/alerting/alerting-rules/create-grafana-managed-rule/#configure-grafana-managed-alert-rules)
