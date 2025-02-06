# ColdFusion System Metrics

ColdFusion Metrics are only available for certain ColdFusion versions
and under certain server configurations.

!!! info "Learn more"
    [ColdFusion Plugin](../Plugins/FusionReactor-ColdFusion-Plugin.md)

The ColdFusion System Metrics page is very similar to the ColdFusion
Metrics page, except that it is more focused on showing information
about the **internal management of requests** on the server rather than
solely showing what requests have been processed.

There are eight different graphs: 

**Scopes** | **Query Cache** | **Template Cache** |**Template Cache Hit Ratio** | <br>
**CF Threads** | **Throttled Memory**| **Throttled Queue Size** | **Concurrent User Count** |  

 
![](/frdocs/attachments/245549451/245549457.png)

### Scopes

The Scopes graphs is used to give an outline of the size of each area
specified by the graph's series. 

The supported areas are :

-   Session Scope size
-   Query cache
-   Template Cache size
-   Application Scope
-   Server Scope size

!!! info 
    The size of each is in KB.

### Query Cache

The Query Cache graph shows the number of ColdFusion queries currently
cached. This requires caching to be configured in ColdFusion.

### Template Cache

This graph shows the number of Template Requests stored in the cache.
This requires caching to be configured in ColdFusion.

### Template Cache Hit Ratio

The Template Cache Hit Ratio graph shows the number of template requests
that are being processed through use of the cache, against the total
amount of template requests being completed at a given point in time.

### CF Threads

The CF Threads graph shows the amount of CF Threads at an instance in
time. 

This graph has two series:

-   **CF Thread Running:** The count of threads which are currently in
    the Running thread state.
-   **CF Thread Thread Queued**: The count of threads which are
    currently in the Queued thread state.

### Throttled Memory

This graph shows the amount of memory that is being throttled by
ColdFusion. Request sizes that exceed the threshold set in ColdFusion
will be throttled. Memory throttling must be configured in ColdFusion.

### Throttled Queue Size

If the Throttled Memory pool reaches it max size, configured in
ColdFusion, all requests exceeding the size threshold set will be queued
for throttling until there is available space. This graph gives a count
of the amount of entries in this queue.

### Concurrent User Count

The Concurrent User Count graph gives a number of how many users are
currently active on CF. The &lt;cflogin&gt; tag is used to help measure
this value.

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.