# Moving a license key 

<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/1077534030?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write; encrypted-media" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="Moving a FusionReactor License Key"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

## How to move a FusionReactor license key to another server
Moving your FusionReactor license key to a new server is a straightforward process, allowing for seamless transitions to new instances. The steps differ slightly depending on whether your previous instance was automatically or manually activated.

### Automatically licensed instances

When you uninstall a FusionReactor instance that was automatically licensed, the license seat will be automatically freed up shortly after the uninstallation. You can then use the same license key to activate your new FusionReactor instance.

#### Deactivating without uninstall (No Downtime)

If you cannot uninstall the old instance immediately, you can deactivate the license directly without requiring a server restart:

1.  Access the **On-Premise UI**:
      * Open your web browser and navigate to the default port: `localhost:8088`.
      * Alternatively, access the **On-Premise** tab for the instance within the Cloud UI.
2.  On the **About** page, click the **Deactivate** button.
3.  **License Freed:** The license seat will now be freed up without requiring a server restart. You can now use your license key on your new server.

### Manually activated instances

If your previous FusionReactor instance was manually activated, follow these steps to deactivate the license:

1.  Access the **On-Premise UI**:
      * Open your web browser and navigate to the default port: `localhost:8088`.
      * Alternatively, access the **On-Premise** tab for the instance within the Cloud UI.
2.  Navigate to the **About** page and click **Manual Activation**.
4.  Generate **Deactivation Code**: Follow the on-screen instructions to generate a deactivation code.
5.  Complete Deactivation Online: On a machine with internet access, go to [https://fusion-reactor.com/manual/](https://fusion-reactor.com/manual/) and follow the instructions to complete the deactivation process using the code you generated.

### Activating on the new server

Once the license is deactivated on the previous instance, simply enter your FusionReactor license key during the activation process on your new server. It should activate without any issues.

### Temporary license for overlapping uptime

If you anticipate a period where both your old and new servers might be running simultaneously during the migration, you can request a temporary FusionReactor license key. Please contact our [Sales team](sales@fusion-reactor.com) with your request, and we will be happy to assist you.


