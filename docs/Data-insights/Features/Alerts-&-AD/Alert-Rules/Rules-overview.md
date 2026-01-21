# Alert Rules

An **Alert Rule** is a set of criteria that defines when FusionReactor should trigger an alert. It continuously evaluates your data and notifies your team when specific conditions are met.



## What makes up an Alert Rule?

An alert rule is built from four core components:

1. **Queries**

    The **Query** selects the specific dataset you want to monitor (such as, CPU usage, heap memory, or error rates).

2. **Conditions**

    The **Condition** is the threshold your query must reach or exceed to trigger an alert (such as, `CPU Usage > 90%`).

    !!! info "Learn more"
        [Queries & conditions](https://grafana.com/docs/grafana/latest/alerting/fundamentals/alert-rules/queries-conditions/)

3. **Evaluation schedule**
    * **Interval:** How often the rule is checked (such as,  every 1 minute).
    * **Duration:** How long the condition must stay "True" before the alert actually fires. This helps prevent notifications for temporary spikes.

4. **Customization & routing**
    * **Expressions:** Use math to combine multiple queries.
    * **[Labels & annotations](https://grafana.com/docs/grafana/latest/alerting/fundamentals/alert-rules/annotation-label/):** 
    Add metadata like severity levels or links to troubleshooting guides.
    * **Notification routing:** Define where the alert goes (such as, Slack, Email, or PagerDuty).
    * **Error handling:** Set rules for how to behave if the system encounters "No Data."

!!! info "Learn more"
    [Alert Rules](https://grafana.com/docs/grafana/latest/alerting/fundamentals/alert-rules/)

