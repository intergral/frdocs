## Compression Settings

The **Compression Settings** page lets you turn on or off the compression
features as well as letting you define how the [MIME Type
Restrictions](#mine-type-restrictions) behave.

### Compression support

!!! warning
    We don't recommend using this feature any more.  It can have side affects
    with new additions to the HTTP standard.

|Configuration|Description|Default|
|--- |--- |--- |
|GZIP Requests|When this option is enabled, FusionReactor will attempt to decompress HTTP requests which are sent to the server in a compressed format.|Disabled|
|GZIP Responses|When this option is enabled, FusionReactor will attempt to compress outgoing HTTP responses unless otherwise instructed by the MIME Type Restrictions or the URL Exclusions.|Disabled|


### MIME Type Restrictions

|Configuration|Description|Default|
|--- |--- |--- |
|MIME Type Restrictions|This value defines how MIME Type Restrictions behave.<br><br>***Ignore requests that match the rules*** -  By default, all requests will be compressed when compression is enabled unless the page's document mime type matches one of the rules defined on the MIME Type Restrictions page (then it will NOT be compressed).<br><br>***Compress requests that match the rules*** - no requests will be compressed unless the page's document mime type matches one of the rules defined on the MIME Type Restrictions page (then it will be compressed).|Ignore requests that match the rules|

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.