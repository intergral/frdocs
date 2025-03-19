# How to get the daily/weekly statistic reports from on-prem 

The Daily Report is normally sent automatically only once the email settings for the FusionReactor instance are configured.

To check the email settings:

1. Login to FusionReactor as the Administrator.

2. Open **FusionReactor** (top left corner) > **Settings**.

3. Select **Email Settings**.

4. Enter the email server details  (Server, User, and Password, if required).

    !!! note
        In the **To Address** field, DO NOT use spaces. Separate multiple email addresses with commas ONLY.


5. Save the settings.

6. After Saving the setting press **Send Test Email** and check that the test email is received.
 

    !!! info
        If the email report still doesn't arrive, the Daily Report Plugin config might be corrupted due to an improper server shutdown.


## Locating & Fixing Corrupt Daily Report Plugin Config Files

The Daily Report Plugin config filed are located in: 

`<fusionreactordir>/instance/<instancename>/cmconfig/com/intergral/fusionreactor/plugin/reports/internal/data/`


These files should contain a line similar to:

`service.pid="com/intergral/fusionreactor/plugin/reports/internal/data/DataStore"`


and more some more information.

If the file does not contain a `service.pid` line, stop the server and delete all files in the data directory.

### Deleting Corrupt Daily Report Plugin Files  

To safely delete the plugin files, follow these steps:  

1. Stop the Application Server (ColdFusion, Tomcat, Lucee, etc.).  

2. Navigate to the Instance Directory at `{fusionreactordir}/instance/{instancename}`.  

3. Delete the files in `/cmconfig/com/intergral/fusionreactor/plugin/reports/internal/data`.  

4. Restart the Application Server to regenerate the necessary configuration files.
 
