## AWS CloudMetrics setting

The FusionReactor AWS CloudWatch Metrics system requires some
configuration prior to use.  

This can be done by navigating to **Metrics &gt; AWS CloudWatch
Metrics** and clicking on the **Configure** button at the top of the
page.

|**Name**|**Value**|
|--- |--- |
|**AWS Access Key**|The AWS Access Key of a user or IAM identity under which metrics will be pushed to CloudWatch.|
|**AWS Secret Key**|The AWS Secret Key corresponding to the Access Key above.|
|**AWS Region**|The AWS region to which the CloudWatch metrics should be pushed.|
|**AWS Namespace**|The CloudWatch Namespace under which metrics will be named. See note below.|
|**AWS Dimensions**|The default set of AWS dimensions which will be applied in the AWS CloudMetrics page.|
|**Send Stale Data**|Controls whether stale datapoint (JMX metrics for which no new data has been received in the last minute) are sent using their old value.|
|**AWS CloudWatch Active**|Master enablement for the metrics shipping system.|


## Troubleshooting

In case of problems, in the first instance, ensure the configuration
form is correctly filled in.  In particular any trailing spaces must be
removed.

The user or IAM identity or role identified by the AWS Access Key must
have permissions to write AWS CloudWatch metric data.  This requires the
following AWS permission:

```JSON
    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Sid": "Stmt1493894646000",
                "Effect": "Allow",
                "Action": [
                    "cloudwatch:PutMetricData"
                ],
                "Resource": [
                    "*"
                ]
            }
        ]
    }
```

!!! info "Learn more"
    For further information go to log file `plugin-fusionreactor-cloudwatch-plugin-0.log`.


___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.