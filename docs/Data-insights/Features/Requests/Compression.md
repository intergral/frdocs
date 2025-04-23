# Compression

**FusionReactor** supports automatically compressing responses before they are sent to the
browser.   This can reduce network requirements at the cost of CPU usage.

!!! warning
    We don't recommend using this feature any more.  It can have side affects
    with new additions to the HTTP standard.

## MIME Type Restrictions

**MIME Type Restrictions** are designed to let you specify which types of
file you want to be compressed, or alternatively, which types you do NOT
wish to be compressed (leaving all other file types to be compressed).

!!! tip
    To select which mode the **Restrictions** page works in, change the **Restrictions** option on the [Compression settings](Compression-Settings.md) page. 

The **MIME Type Restrictions** page has two main areas: <br>
At the top of the page there is a form for you to enter new restrictions and below this is a list of all
existing restrictions for this feature.

### New MIME Type Restriction

To enter a restriction you will need to fill the following fields:

|Configuration|Description|
|--- |--- |
|**Request**|This is the document type that you want to restrict. Firstly select if you are creating an **Exact Match** or **Regular Expression**. Next enter your MIME Type. For examples of Regular Expressions, see **Regular Expressions and Content Filters**.|
|**Text or Regular Expression**|The text input here depends on the option you choose for Request. The options are **Exact Match** or **Regular Expression**.|


!!! info
    Once you submit the form, the page is refreshed and your new restriction will be listed in the table at the bottom of the page.

### Managing existing restrictions

Below the **Add Restriction** form you will see a list of all existing
restrictions. Each restriction has two icons next to it:

|Button|Description|
|--- |--- |
|![](/frdocs/attachments/245550099/245550116.png)|Clicking this icon will change the **Add Restriction** form above into the **Edit Restriction** form, and it will be filled out with the details of the selected restriction. With this form you can change any of the information which is listed above (New MIME Type Restriction).<br>Click **Save** on the right to save the modified restriction details.|
|![](/frdocs/attachments/245550099/245550121.png)|Clicking this icon prompts gets you to confirm you want to delete this restriction. If you select **OK** the restriction is removed from the **Existing Restrictions** list and the page  is refreshed.|


## Exclude URLs

The **Exclude URLs** list lets you define a set of pages which will never be
compressed. The **Exclude URLs** page has two main areas: At the top of the
page there is a form for you to enter new exclusions and below this is a
list of all existing exclusions for this feature which you can edit or
delete.

### New URL Exclusion

To enter an exclusions, complete the following fields:

|Configuration|Description|
|--- |--- |
|**Request**|This is the page you want to exclude. Firstly select if you are creating an **Exact Match** or **Regular Expression**.<br><br> **Exact Match** <br> Next enter the location of your page. By default the request will be an exact match and should look something like "/batchStats.cfm" or "/batch/dailyStats.cfm" (beginning with a '/' and without parameters.). The text you input here will depend on the options you choose for the Hostname and Parameters fields. <br> **Regular Expressions** <br> A good use of Regular Expressions here would be to restrict everything within a given folder. For examples of Regular Expressions, please see Regular Expressions and Restrictions. The text you input here will depend on the options you choose for the Hostname and Parameters fields.|
|**Hostname**|By default, FusionReactor will ignore the hostname and simply match based on the web path of a given request, but you can also opt to include it. If you enable Hostname checking then the request field should also include a hostname and look something like "productionMachine/batchStats.cfm".  <br> You should NOT include HTTP or HTTPS at the start of this string.|
|**Parameters**|By default, FusionReactor will ignore any parameters passed to a page, however, as with the hostname, you can also opt to include them in your restriction. With parameter checking enabled, the request field should include the necessary parameters. For example "/batchStats.cfm?period=YEAR". Once again, Regular Expressions and Restrictions can be useful here when specifying multiple possible parameter values, or even specifying parameters where the order isn't fixed.|

!!! info
    Once you submit the form, the page is refreshed and your new exclusion will be listed in the table at the bottom of the page.

### Managing existing exclusions

Below the **Add Exclusion** form you will see a list of all existing
exclusions. Each exclusion has two icons next to it:

|Button|Description|
|--- |--- |
|![](/frdocs/attachments/245550141/245550157.png)|Clicking this icon takes you to the **Modify Exclusion** page. From this page you can change any of the information which is listed above (New URL Exclusion).|
|![](/frdocs/attachments/245550141/245550172.png)|Clicking this icon prompts if you are sure you want to delete this exclusion. Selecting **OK** removes the exclusion from the **Existing Exclusion** list and the page will be refreshed.|


## Compression Settings

The **Compression Settings** page lets you turn on or off the compression
features as well as letting you define how the [MIME Type Restrictions](#mine-type-restrictions) behave.

### Compression support

!!! warning
    We do not recommend using this feature any more.  It can have side effects
    with new additions to the HTTP standard.

|Configuration|Description|Default|
|--- |--- |--- |
|**GZIP Requests**|When this option is enabled, FusionReactor will attempt to decompress HTTP requests which are sent to the server in a compressed format.|Disabled|
|**GZIP Responses**|When this option is enabled, FusionReactor will attempt to compress outgoing HTTP responses unless otherwise instructed by the MIME Type Restrictions or the URL Exclusions.|Disabled|


### MIME Type Restrictions

|Configuration|Description|Default|
|--- |--- |--- |
|**MIME Type Restrictions**|This value defines how MIME Type Restrictions behave.<br><br>**Ignore requests that match the rules** -  By default, all requests will be compressed when compression is enabled unless the page's document mime type matches one of the rules defined on the MIME Type Restrictions page (then it will NOT be compressed).<br><br>**Compress requests that match the rules** - no requests will be compressed unless the page's document mime type matches one of the rules defined on the MIME Type Restrictions page (then it will be compressed).|Ignore requests that match the rules|

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.
