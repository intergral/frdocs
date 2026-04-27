# Alerting

Alerting allows you to define rules that fire notifications when specific conditions are met across your application environment - such as high memory usage, slow response times, or elevated error rates.

## On-premise: Crash Protection

For on-premise FusionReactor, **[Crash Protection](/Data-insights/Features/Crash-protection/Crash-Protection/)** provides built-in alerting for:

- Long-running or high-frequency requests
- High CPU or memory usage
- Specific error conditions

Crash Protection can queue or abort problematic requests and send email alerts when thresholds are breached.

!!! tip "Full alerting available in OpsPilot"
    **OpsPilot** provides a full Grafana Alertmanager-based alerting system with:

    - Threshold and anomaly-based alert rules
    - Contact points (email, Slack, PagerDuty, webhooks)
    - Notification policies, silences, and mute timings
    - Alert grouping and routing

    [View OpsPilot docs](https://docs.opspilot.com) or [start a free trial](https://app.opspilot.com)
