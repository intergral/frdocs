# Sampling
Observing transactions isn't without performance cost - both memory and CPU - and that's where sampling comes in. By setting a ratio of spans to be sampled, you can find a balance to gain enough insight into the workings of your instance without generating an unnecessary amount of spans. 

!!! tip 
    We find a sampling ratio of 5% to be generous enough but the right ratio for you will depend on the typical activity of your instance/service.

!!! note "If a span is sampled, so too are its child spans."


## Unsampled ITTs (Interesting transactions)

An amount of transactions processed (10 per minute by default) can be categorised as an ITT (Interesting transaction) if the transaction was slow or if an error occurred during it. At the time of ITT categorisation, if the span is unsampled, it becomes sampled and is exported. This does not affect the sample status of the span's parent and children.

!!! note "Unsampled ITTs are distinguished by the `is_unsampled_ITT` span attribute."


## Properties used for sampling
Add to JVM arguments/options by prepending with `-D`.


| Property key | Default | Description |
| -- | -- | -------- |
| `fr.observability.trace.sampling.rejected.flavours`                    | `null` | A comma-separated list of flavours to reject from sampling. e.g. `Redis,Cassandra`. The sample state is propagated to child spans. |
| `fr.observability.trace.sampling.rejected.flavours.singular`           | `null` | A comma-separated list of flavours to reject from sampling. e.g. `Redis,Cassandra`. The sample state is not propagated to child spans. In this case, the span is not created at all. |
| `fr.observability.trace.sampling.rejected.flavours.singular.mastertxn` | `null` | A comma-separated list of root/master transaction flavours to reject from sampling. e.g. `Redis,Cassandra`. The sample state is not propagated to child spans. In this case, the span is not created at all. |
| `fr.observability.trace.sampling.cftag.enabled`     | `true` | ColdFusion transactions are usually wrappers around normal Java transactions, use this property to disable span creation if you do not find them useful. In this case, the span is not created at all. |
| `fr.observability.trace.span.child.limit` | `100` | The maximum number of child spans allowed on a span. This is limited to children created in a singular instance/service and uses the FusionReactor transaction parent and child to limit. |

---

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.