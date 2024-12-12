# Labels & fields

When shipping logs to **FusionReactor Cloud**, you can apply labels to them. These labels can be used to filter your log content using LogQL.

Default labels applied by FusionReactor include **job**, **instance**, **app_name**  and **filename** but are not limited to these specific entries. 

If you ship logs through FusionReactor a label for the instance will be applied, and if you ship your logs through an alternate log client you can specify any labels you require.


When shipping logs from outside the FusionReactor agent, it is important to ensure the labels job and instance are applied to the logs. **Job** is typically the name of the service you are running and **instance** will be the host the service is running on.

These labels allow you to isolate your LogQL queries to a selection of your online logging clients, without these you may have difficulty differentiating where logs are coming from.

!!! tip
    In order to maintain performance when querying your data, avoid high cardinality labels (such as having labels with similar names but incorporating a unique ID). 

!!! info "Learn more"
    [Loki documentation](https://grafana.com/blog/2020/04/21/how-labels-in-loki-can-make-log-queries-faster-and-easier/).

Fields are derived from the log contents using key value pairs (“key=value”); these fields will give you the ability to  collate log entries into a graph.

## Adding labels to logs exported from the agent

You can add up to eight custom labels to logs exported from the agent using JVM args. 

!!! note
    General customs labels are applied first and contribute to the limit.

Add to JVM arguments/options by prepending with `-D`.

| Property key | Default | Description |
| -- | -- | -------- |
| `fr.observability.log.labels` | `""` | A comma-separated key-value list of labels to add a maximum of 8 (by default) to logs, note that general observability labels specified by `fr.observability.labels` are applied first and contribute the limit. Format `labelKey1:labelValue1,labelKey2:labelValue2,...` |
| `fr.observability.log.labels.separator.list` | `,` | Regex string to split/separate the `fr.observability.log.labels` list. |
| `fr.observability.log.labels.separator.keyvalue` | `:` | Regex string to split/separate the key-values in the `fr.observability.log.labels` list. |


## What is Logfmt?

Logfmt is a log parser that allows **FusionReactor Cloud** to collate metric data from log fields that are represented as  key=value data pairs.

When sending your logs you will gain greater value by using logfmt. FusionReactor logs themselves will be converted to logfmt when ingested.

!!! info "Learn more"
    [Logfmt](https://brandur.org/logfmt)


___

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.