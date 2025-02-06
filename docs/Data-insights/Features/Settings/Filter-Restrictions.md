## Restrictions Settings

FusionReactor restrictions are set up so that FusionReactor can ignore
certain requests, or alternatively, you can specify a set of pages which
you want to monitor with FusionReactor while all others are ignored. To
select which mode the Restrictions page works in, change the
Restrictions option on the [FusionReactor
Settings](Main-Menu.md) page. The FusionReactor Restrictions
page has two main areas: At the top of the page there is a form for you
to enter new restrictions and below this is a list of all existing
restrictions for the application.

### Creating Restrictions

To enter a restriction you will need to fill the following fields:

|Configuration|Description|Default|
|--- |--- |--- |
|Match Strategy|This defines how FusionReactor will interpret the expression specified in the request field. FusionReactor can either interpret it as an Exact Match or a Regular Expression.|Exact Match|
|Request|This field defines the expression that is used to perform the restrictions. This must follow the pattern defined by the Match Strategy.<br>Examples of request expressions used with the different match strategies:<br>Exact Match - By default the request will be an exact match and should look something like "/batchStats.cfm" or "/batch/dailyStats.cfm" (beginning with a '/' and without parameters.) . The text you input here will depend on the options you choose for the Hostname and Parameters fields.<br>Regular Expressions - A good use of Regular Expressions here would be to restrict everything within a given folder. For examples of Regular Expressions, please see Regular Expressions and Content Filters. The text you input here will depend on the options you choose for the Hostname and Parameters fields.|/myfolder/myfile.cfm|
|Hostname|By default, FusionReactor will ignore the hostname and simply match based on the web path of a given request, but you can also opt to include it. If you enable Hostname checking then the request field should also include a hostname and look something like "productionMachine/batchStats.cfm". You should NOT include HTTP or HTTPS at the start of this string.|Ignore|
|Parameters|By default, FusionReactor will ignore any parameters passed to a page, however, as with the Hostname, you can also opt to include them in your restriction. With parameter checking enabled, the request field should include the necessary parameters. For example "/batchStats.cfm?period=YEAR". Once again, Regular Expressions can be useful here when specifying multiple possible parameter values, or even specifying parameters where the order isn't fixed.|Ignore|


Once you submit the form the page will be refreshed and your new
restriction will be listed at the bottom of the page.

### Managing Existing Restrictions

Below the Add Restriction form you will see a list of all existing
restrictions. Each restriction has two icons next to it:

|Button|Description|
|--- |--- |
| :fa-edit: |Clicking on this icon will change the :fa-arrow-circle-o-up: Add Restriction button above into the Edit Restriction form. The form will be filled out with the existing restriction details, where you can change any of the information and save it.|
| :fa-trash: |Clicking on this icon will prompt you if you are sure you want to delete this restriction. If you OK the dialog then the restriction will be removed from the Existing Restrictions list and the page will be refreshed.|
