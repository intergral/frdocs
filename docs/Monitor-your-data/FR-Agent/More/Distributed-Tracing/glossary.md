# Glossary of General Terms

| Term | Definition |
|--|--------|
| Trace | A trace represents a series of events/actions (spans) which make up one whole request/transaction. |
| Distributed Trace | A trace which describes a request/transaction involving multiple instances/services. |
| Traceparent Header | A header which is used to pass the trace parent to downstream instances/services. Downstream instances/services will use this as the span parent of generated spans, connecting the two instances/services to the same trace. |
| Tracestate Header | A header used to pass information regarding the state of the trace. |
| Trace ID | Each trace has a unique ID which is used to join related spans together. |
| Trace Context | Context which describes a trace. |
| Trace Context Propagation | The act of propagating/passing trace information to generated child spans, ensuring that the information is propagated throughout the entire trace. |
| Span / Transaction | The representation of a single event/action containing related information.|
| Root/Master Span | The root event/action of the trace. The event/action which started the request. | 
| Span Parent | The span which generated a separate, succeeding span describing an event/action. |
| Span Child | The span generated from a separate, preceding span describing an event/action. |
| Span Name | A name given to the span for identification/descriptive purposes. The default name of FusionReactor spans depends on the transaction flavour. If a name can't be found then the transaction flavour is used as the name. |
| Span Duration | The duration of the event/action described by the span. |
| Span Kind | A categorisation to describe span relationships e.g. Internal, Server, Client, Producer, Consumer |
| Span Attribute | A key-value property, belonging to a span, describing information about the event/action. |
| Span Link | A link from one span to another which indicates that they are related. The linked spans are usually on separate traces. |
| Span Event | An interesting event that occurred during the span. May contain information/logs which describe it. |
| Span Status | The status of the span. One of unset/OK/error. |
| Exporting | Spans are exported from an agent/service/instance to a collector/datastore. |
| Sampling | The decision to process/export an event/action as a span. |
| Instrumentation | The act of instrumenting code so that it will generate spans. |
| Unsampled ITT | If a span was slow or it errored, the span can be considered an Interesting Transaction (ITT). If it was decided, at the span's creation, that the span wasn't to be sampled, there's a chance that FusionReactor will change this decision and sample/export it. This does not affect the sample state of parent and child spans. [More](./sampling.md#unsampled-itts-interesting-transactions) |
