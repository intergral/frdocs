

**Time intervals** allow you to control exactly when alert notifications are delivered during designated periods. These intervals are assigned to a specific Alertmanager and only affect the alerts managed by that instance. Importantly, while a time interval suppresses the actual notification, it does not interrupt the underlying alert evaluation process.

A time interval is a recurring interval used to pause notifications for one or more notification policies during a specific period. This is ideal for managing notifications during:

* **Regular maintenance windows** where alerts are expected.

* **Scheduled "off-hours"** such as evenings or weekends.

Once you have defined a time interval, you can apply it to your notification policies to ensure your team is only notified at the appropriate times.


## Add a time interval

1. Navigate to **Alerting** >  **Notification Policy** and select **Time intervals**.
2. Click the **+ Add time interval** button.
3. Enter a unique name for the interval (such as, `weekend-maintenance` or `off-hours`).
4. Use the **Time intervals** section to specify when the mute should be active:
    * Define the start and end times (such as, `22:00` to `06:00`).
    * Select specific days (such as,`Saturday`, `Sunday`).
    * Specify numerical dates (such as, `1`, `15`) or use "last" for the end of the month.
    * Choose specific months if the maintenance is seasonal (such as `January`, `July`).
    * Optionally limit the interval to a specific year range.


5. **Add Multiple Intervals:** If your schedule is complex (such as, different times for different days), click **+ Add another time interval** to create additional rules within the same mute timing.
6. **Submit:** Click **Submit** to save the mute timing.

## **Applying the Mute Timing**

After saving, your mute timing will not work until it is linked to a policy.

1. Go to **Notification policies**.
2. Find the policy you want to silence (Default or a specific child policy) and click **More** > **Edit**.
3. Scroll to **Mute timings** and select your newly created timing from the dropdown.
4. Click **Save policy**.

