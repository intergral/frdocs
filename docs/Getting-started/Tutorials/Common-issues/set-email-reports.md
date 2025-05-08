# Setting up email report alerts in FusionReactor (On-Premise)

## Overview

FusionReactor’s **Email Reports** offer an efficient way to monitor server performance without the need to frequently access the UI. This guide outlines how to configure SMTP email settings and enable scheduled report delivery in the on-premise version of FusionReactor.

<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/1081897822?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write; encrypted-media" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="Setting up email report alerts in FusionReactor (On-Premise)"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

## Prerequisites

* Access to the FusionReactor on-premise UI
* SMTP server details for your email provider (e.g., Gmail, GMX, Outlook)
* Admin-level permissions in FusionReactor


## Configure SMTP email settings

### Step 1: Access email settings

1. Log into the **FusionReactor on-premise UI**.
2. In the top-left corner, click **FusionReactor > Settings**.
3. Select **Email Settings**.

### Step 2: Enter SMTP configuration

1. Fill in your SMTP server details (host, port, authentication credentials, etc.).
2. If you’re unsure of the correct SMTP details, search online using terms like:

   ```
   SMTP server Gmail / GMX / Outlook
   ```

### Step 3: Test email delivery

1. After entering the required fields, click **Save Settings**.
2. Select **Send Test Email**.
3. A green success banner will appear if the configuration is correct.


## Enable & configure email reports

### Step 1: Locate the reports plugin

1. In the UI, go to **FusionReactor > Plugins > Active Plugins**.
2. Find **FusionReactor Reports** in the list.
3. Click the **Configuration** icon (gear icon) to the right.

### Step 2: Customize report settings

1. **Enable** the report feature.
2. Choose how often you’d like to receive reports:

     * **Daily**
     * **Weekly**
     * **Monthly**

3. Select the **time of day** for delivery.



Once setup is complete, reports will be automatically delivered to your inbox at the specified frequency and time. This allows you to proactively monitor your server's performance without manual intervention.

