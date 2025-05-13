# AWS CloudWatch Metrics

[Amazon WebServices CloudWatch](https://aws.amazon.com/cloudwatch/)
is a cloud service which ingests, stores, graphs and monitors simple
metrics.  It is part of Amazon Web Services (AWS), a comprehensive suite
of tightly-integrated cloud services.  AWS CloudWatch integrates with a
number of other AWS products to provide a comprehensive framework for
dealing with metrics, and handling alerting, notification etc.

FusionReactor can periodically ship any internally-tracked metric to AWS
CloudWatch.

!!! warning
    **AWS CloudWatch is not a free service**. 
    
By enabling this functionality in FusionReactor, you are potentially subscribing to chargeable services at AWS. It is your responsibility to monitor these charges, for which Intergral GmbH cannot be held liable.

!!! info "Learn more"
    [Pricing information for AWS CloudWatch](https://aws.amazon.com/cloudwatch/pricing/).

## Metrics selection

**Metrics &gt; AWS CloudWatch Metrics** allows you to select metrics to
send to AWS, and the status of currently-selected metrics.

**FusionReactor AWS CloudWatch Metrics** must be configured before any
data can be uploaded to AWS CloudWatch. This is done by clicking the
**Configure** button. 

 Configuration of this functionality is described
[here](#aws-cloudmetrics-setting).

![](/attachments/245549462/245549477.png)

The **Metrics Selection** screen is split into a **selector** area,
comprising a filter, series selector, dimensions selector and **Add to CloudWatch** button.  All series - including [JMX
MBean](JMX-MBeans.md) series - are  displayed here.  The
displayed series can be filtered by adding a series.

### Adding a series

Click a series to select it;  multiple series can be selected by holding
down **command** (Mac OS X), **control** (Linux + Windows).

Enter any dimensions you require for this series, and click **Add to
CloudWatch** to begin shipping this metric to AWS.

**AWS CloudWatch Dimensions** allow you to differentiate the same metric
coming from different servers. If you would rather have metrics
aggregated, leave the **Dimensions** box empty, or supply the **same**
**dimension** across your whole FusionReactor fleet. 

!!! note
    Be aware that you will not be able to differentiate the source of the metric in CloudWatch.

### Examples

!!! example "How to see the **Classes Loaded** metric for each instance on all servers separately"
     **Dimensions:** Use the default instancename and hostname dimensions.

!!! example "How to see the **Classes Loaded** metric per server, regardless of how many FR instances are on that server."
    **Dimensions:** Supply only the **hostname** dimension.

 !!! example "How to see an aggregate of **Classes Loaded** over my whole fleet.
    **Dimensions**: Leave this blank. AWS CloudWatch will aggregate the metric as it is shipped by FusionReactor.



#### Dimension templates

Several dimensions can be filled in by FusionReactor using curly-brace
templates. Clicking the **Info** icon next to the Dimensions field
shows the supported placeholders:

-   **{hostname}** - the hostname of the machine.
-   **{instancename}** - the name of the FusionReactor instance.


## Available / stale metrics

The lower half of the screen shows the current **Available** and **Stale** metrics. 

![](/attachments/245549462/245549471.png)

The columns here show the name, description, dimensions, name of the
metric within AWS, full ID and last sampled value.  The **Remove**
button can be used to stop sending this metric to CloudWatch.

Any **Stale** JMX Metrics (metrics which have not published a new
datapoint in the last might- – usually because the JMX bean has stopped)
are listed in the **Stale** tab.

To change the dimensions associated with a metric, first **Remove** it
and then add it again from **Available Series**.

{!Metrics/AWS-CloudMetrics-Configuration.md!}

___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.