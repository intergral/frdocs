
Notification policies are the engine of your alerting system, providing a flexible way to route alerts while minimizing noise. They are organized in a **tree structure**, starting with a **Default (Root) policy** that can branch into various child and sibling policies.

### How policies handle alerts:

* **Label Matching:** Alerts are routed based on "label matchers." Each policy looks for specific labels on an alert to decide if it should handle that notification.
* **Hierarchical Routing:** Because policies are a tree rather than a list, alerts can move through nested levels, inheriting settings from parents or being captured by specific sub-policies.
* **Alert Grouping:** To prevent alert fatigue, policies bundle multiple related alert instances into a single notification before delivering them to the designated **contact point**.
* **Timing Control:** Policies define precisely when to send notifications, allowing you to silence or delay alerts based on your specific needs.



### Configure Notification Policies

The **Default Policy** handles any alert that doesn’t match a specific rule.

1. Navigate to **Alerting** > **Notification policies**.
2. In the **Default policy** section, click **More** and select **Edit**.
3. **Default contact point:** Select where to send unmatched alerts.
4. **Group by:** Choose labels (like `cluster` or `service`) to bundle related alerts together to reduce noise.
5. **Timing options:**
* **Group wait:** How long to wait before sending the first alert (default 30s).
* **Group interval:** Wait time between updates for an existing group (default 5m).
* **Repeat interval:** How long to wait before re-sending the same alert (default 4h).


6. Click **Save**.



### **Creating Child and Sibling Policies**

Use these policies to route specific alerts (e.g., `severity=critical`) away from the default path.

#### **Add a Child Policy (Nesting)**

1. Click **+ New child policy** under the policy you want to branch from.
2. **Matching labels:** Add labels to define which alerts this policy handles (e.g., `team=operations`).
3. **Contact point:** Choose a destination. If left empty, it **inherits** the parent's contact point.
4. **Inheritance Toggles (Optional):** Enable **Override grouping** or **Override general timings** if this policy needs different settings than its parent.
5. Click **Save policy**.

#### **Add a Sibling Policy (Ordering)**

* **Why it matters:** Policies are evaluated from **top to bottom**. Use siblings to prioritize one rule over another at the same level.
* **How to add:** Find an existing child policy, click **Add new policy**, and choose **New sibling above** or **New sibling below**.
* Follow the same label matching and contact point steps used for child policies.


### **Key Routing Concepts**

* **Label Matching:** Alerts only enter a policy if their labels match your rules.
* **Top-to-Bottom:** The system checks the first policy in the list; if it matches, it moves to that policy's children.
* **Continue Matching:** If you enable this, the system will keep checking other policies even after a match is found, allowing one alert to trigger multiple notifications.

!!! info "Learn more"
    [Create Notification Policies](https://grafana.com/docs/grafana/latest/alerting/configure-notifications/create-notification-policy/)

