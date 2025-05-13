# The life cycle of a FusionReactor span

## The start of a span
Generally, FusionReactor creates a span when an action is started, such as when a particular method is called.

When a span is created, the parent is either extracted from a received request's [trace parent header](./propagators.md), chosen by a specified trace context or the currently active transaction on the thread. If no such parent is found, the span becomes a root span.

It is then decided whether the span shall be [sampled](sampling.md) or not. If the span has a parent, the span uses the parent's sample state or it's decided via probability.

The span is given a default name (the transaction's flavor) and a span kind.

A trace parent header is also injected if the span is of the necessary flavor type (HttpClient, OkHttp etc), so that trace information can be propagated to other instances/services.


## During a span
If an error is thrown during the span, an event will be recorded on the span. This includes the exception type, message and stacktrace.

| <a href="/images/Tracing/trace.png" target="_blank">![](/images/Tracing/trace.png)</a> |
| -- |
| An example of a span with a trace, displaying a captured error and a limited example of attributes. |

## The end of a span
When a span ends it is passed through ITT processing. This will decide whether the span was an interesting transaction or not. In the case that the span is an ITT but isn't sampled, the [span is sampled](./sampling.md#unsampled-itts-interesting-transactions) and set to be exported.

The span name is changed if a more detailed one is available. Span [attributes](./attributes.md) are also added according to the transaction flavour.

The span is then added to the exporting/shipping queue to await shipment via HTTP request. The span is [exported/shipped](./exporting.md) as part of a batch of spans after being converted to the [OpenTelemetry Protobuf](https://github.com/open-telemetry/opentelemetry-proto/blob/bacfe08d84e21fb2a779e302d12e8dfeb67e7b86/opentelemetry/proto/trace/v1/trace.proto) format.

---

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.
