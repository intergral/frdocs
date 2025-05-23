# Notifications

This page allows you to see all the notifications that FusionReactor has
raised. Notifications are messages from FusionReactor that alert you to conditions
which require attention, or are otherwise abnormal.

The amount of unread notifications can be seen as an icon on the
**Notifications** tab at the top menu in FusionReactor that will look
like this:

![](/attachments/245548637/245548655.png)

Notifications are color coded according to severity.

-   Information - Blue - INFORMATION
-   Warning - Yellow - WARNING
-   Error - Red - ERROR

For a detailed view you can navigate to this page by clicking on the
**Notifications** drop down menu at the top of the page and then
clicking on **Notifications**, or by clicking on a server in the
**Enterprise** **Dashboard** page and then clicking on
**Notifications**. Notifications are presented in a table with the
following headings:

## List Table

|Name|Description|
|--- |--- |
|Origin|The subsystem or plugin which raised the notification.|
|Time|The date and time the notification was created.|
|Severity|The type or urgency of the notification. There are three severity types: Info, Warning and Error.|
|Title|A succinct title, usually containing a summary of the condition.|
|Message|A more verbose message. This may contain actions required to relieve the abnormality.|


## Managing Notifications

All notifications will allow you to mark them as read, and most
notifications will allow you to delete them. However, there are some
urgent notifications that cannot be deleted so the option to remove will
not be available. 

|Button|Name|Description|
|--- |--- |--- |
|![](/attachments/245548637/245548649.png)|Remove|Remove - removes this notification. Some notifications - usually serious issues - can't be removed. They will be removed by the originating system when the condition to which they pertain clears.|
|![](/attachments/245548637/245548643.png)![](/attachments/245548637/245548661.png)|Mark Read / Mark Unread|Mark Read - marks this notification as having been read.  It won't appear as a New Notification in Enterprise Dashboard, or the Notifications drop down. The row will be grayed out slightly to indicate this notification has been read. The Mark Read button will change to Mark Unread - which resets the notification back to its unread state.|

## Menu Options

There are three global functions in the notifications page, represented
by three buttons.

|||
|--- |--- |
|Name|Description|
|Mark All Read|Marks all notifications read.  They will not appear as New Notifications in the TOC indicator, nor will they appear in the Enterprise Dashboard (for customers with applicable licenses).|
|Mark All Unread|Marks all notifications as unread.  They will appear as New Notifications in the TOC indicator, and will appear in Enterprise Dashboard.|
|Remove All|Removes all deletable notifications completely.|


All buttons will be disabled when they have no logical function; for
example if all notifications are unread, **Mark All Unread** will be
disabled.

## Updating

Since the Notifications list updates dynamically, there will be a short
delay (on average 2.5s) until the page updates after a button press.  In
the meantime, the button text is changed to **"Wait..."** to indicate
that FusionReactor has received and processed the request, but that the
effect hasn't been reflected in the page yet.

## Enterprise Dashboard

Notification information is also sent to the Enterprise Dashboard. The
cube icon will display a red badge whenever any new notifications are
available, and the count of new and total notifications for each
monitored server is displayed in the information block.

## Banner Notifications

The Banner Notification can be displayed in FusionReactor and
FusionReactor Administration Manager. The banner notification is a new
feature and is based upon the currently existing notification
service but with the added emphasis of appearing as a banner on every
FusionReactor page. Therefore, it shares similar functions, abilities,
and looks, as notifications. 

## Create Notification

The [FusionReactor Notification Generator
Plugin](/Data-insights/Extras/Plugins/FusionReactor-Notification-Generator-Plugin/)
allows Administrator users to create their own notifications. When a
notification is generated by the Administrator, it will be visible to
the Manager and Observer users as well.  
This could be useful for the Administrator to notify the other users of
changes to settings that have occurred, of give them warnings.

To create a notification navigate to **FusionReactor &gt; Notifications
&gt; Create Notification**.

|Field|Description|
|--- |--- |
|Notification Title|The notification title, for example it might be "The server is being shutdown"|
|Notification Message|The notification message, for example it might be "The server is being shutdown for maintenance"|
|Notification Type|The type of notification. Types include :<br><br> * Information - INFORMATION<br> * Warning - WARNING<br> * Error - ERROR<br>This allows you to communicate the intent of the notification to observers. For example if you were restarting your server you would set the Notification Type to Information.|

Once you are satisfied click the button titled **Create Notification**
and the notification will be created.
