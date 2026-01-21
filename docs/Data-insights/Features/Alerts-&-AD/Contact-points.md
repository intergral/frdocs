

## What are Contact Points?

A **contact point** is simply a destination for your alerts. You can assign them directly to an alert rule or use a notification policy to route them.

### How they work:

* **Integrations:** A single contact point can contain one or several "integrations" (e.g., Slack, Email, PagerDuty, or Webhooks).

*  **Combinations:** You can mix and match. One contact point could send an alert to a single Slack channel, while another sends it to Slack, PagerDuty, and two different email addresses simultaneously.

* ***Custom Messaging:** For each integration, you can use the predefined message, write a custom one, or use a reusable template.



## Supported Services:

Grafana supports dozens of platforms, including **Slack, Microsoft Teams, Email, PagerDuty, Discord, Webhooks,** and [more](https://grafana.com/docs/grafana/latest/alerting/configure-notifications/manage-contact-points/#supported-contact-point-integrations).

!!! note
    If you create a contact point with no integrations, no notifications will be sent.

## Configure Contact Points

To configure Contact Points, define the destinations where your alerts should be sent, such as Slack, Email, or PagerDuty. You can combine multiple services into a single contact point to ensure the right people are notified across different platforms simultaneously.


### **How to Add a Contact Point**

1. Navigate to **Alerting** > **Contact Points**.
2. Click the **+ Create contact point** button located on the right side of the screen.
4. In the **Name** field, provide a unique and descriptive name for this contact point.
5. Choose your desired service (such as Email, Slack, or Webhook) from the **Integration** dropdown menu.
6. Fill in the mandatory fields for your integration. For example, if using **Email**, enter the recipient addresses in the **Addresses** text area.
7. Expand **Optional settings** to add specific technical configurations for that service.
8. Expand **Notification settings** if you wish to customize how messages are bundled or formatted.
8. Click **Save contact point** at the bottom of the page to finalize.

### **Adding Multiple Destinations**

If you want one alert to go to multiple places at once (e.g., Email *and* a Webhook):

1. While editing or creating a contact point, click **+ Add contact point integration**.
2. Select a new integration type and fill in the required details.
3. Click **Save contact point**.


!!! info "Learn more"
    [Configure Contact Points](https://grafana.com/docs/grafana/latest/alerting/configure-notifications/manage-contact-points/#add-a-contact-point)


### Notification Templates

To do