Alerting allows you to define granular alert rules across your entire application environment and manage notifications using powerful, flexible routing. Built to handle complex, distributed architectures, it integrates seamlessly with the FusionReactor Cloud stack to provide a scalable and proactive monitoring solution that ensures high availability across any environment.


## How it works

![!Screenshot](/images/New-alerting/alerting-overview.png)

1. Grafana Alerting periodically evaluates alert rules by executing their data source queries and checking their conditions.

2. Each alert rule can produce multiple alert instances - one per time series or dimension.

3. If a condition is breached, an alert instance fires.

4. Firing (and resolved) alert instances are sent for notifications, either directly to a contact point or through notification policies for more flexibility.


## Key concepts:




| Component | Description |
| --- | --- |
| **Alert Rules** | Consist of queries and expressions to select data, plus a specific condition (threshold) that must be met for the alert to fire. |
| **Alert Rule Evaluation** | Rules are checked frequently to update the state of alert instances. Notifications are only sent for instances in a "firing" or "resolved" state. |
| **Alert Instances** | A single rule can produce multiple instances (one per time series or dimension), allowing you to monitor multiple resources with one expression. |
| **Contact Points** | Define the message content and the destination (such as, Email, Slack, PagerDuty, or Webhooks) for your notifications. |
| **Notification Messages** | Provide details like status, count, and annotations. These are customizable and can be routed via contact points or notification policies. |
| **Notification Policies** |Think of notification policies as a routing map for your alerts. They use labels to send the right alerts to the right teams. Every system starts with a Default Policy, which acts as a safety net to make sure no alert is missed. | 
| **Notification Grouping** | Reduces "noise" by bundling related firing alerts into a single notification. This behavior can be customized in the rule or policy settings. |
| **Silences & Mute Timings** | Pause notifications without stopping the underlying alert evaluation. This ensures your system continues to monitor for issues and display active alerts in the UI, even while notifications are suppressed. |

!!! info "Learn more"
    [Alerting fundamentals](https://grafana.com/docs/grafana/latest/alerting/fundamentals/)