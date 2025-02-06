# Custom Metrics

On this page you can see custom metrics.  These metrics are usually
submitted by using a [FRAPI](../FRAPI/FRAPI.md) method.

![](/frdocs/attachments/245549420/245549427.png)

```java
FRAPI.getInstance().postMetric("metricName", 12.5);
```

There are many overloaded methods on FRAPI that can be used to post
metrics.

!!! info "Learn more"
    [FRAPI JavaDoc](https://fusion-reactor.com/frapi/8_0_0/)

If you post a non-numeric metric to FRAPI, this will result in a column
chart in place of the line graph.

## Changing graph

To change the graph using the selector on the top right of the page.
This selector will list all the currently available graphs.

!!! tip
    If the graph is not listed, try refreshing the page. The selector will only update on a page refresh.

## Aggregates

As a part of the metrics engine **aggregates** can be collected on the
metrics. There are default aggregates that run every five seconds, one minute
and one hour. These aggregates are can be enabled or disabled depending
on the FRAPI method called.

There will be buttons on the bottom right of the graph that display the
aggregates that are available for that graph.

```java
FRAPI frapi = FRAPI.getInstance();
 
for(int i=0; i<10; i++)
{
    frapi.postNumericAggregateMetric("MetricName",i);
}
```

Values that are put into the metrics engine using the FRAPI calls will
not result in a automated sampler. This means that the graph will
only render the points attached by the user, resulting in a **Live** graph
that will end at the last point that was added. The graph will update as
soon as the next point is added.

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.