# Spring

## Span Name
Span names for Spring are:
- `Render {view_name}` for render spans.
- `{controller_name}.{method_name}` for request mapping spans.

## Things to be aware of

- Request mapping spans will attempt to parse requests for a templated route, e.g. `/documents/{document_id}`. This process will rename a parent [WebRequest](./WebRequest.md) span to the templated route and set any templated parameters as span attributes in the form `http.request.route.path_parameter.{templated_parameter_name}`. This can be disabled via properties. 



## Properties for Spring
Check the [attributes page](../attributes.md#properties-used-for-attributes) for general properties that can affect Spring transactions.
l
| Property Key | Default | Description |
| -- | -- | -------- |
| `fr.observability.trace.attributes.route.templated.enabled`            | `true` | Whether to attempt to process request objects for their templated path/route when possible. This will be set as the span name for the master transaction's span. E.g. `/show/{user}` instead of `/show/user001`                                                                                       |
| `fr.observability.trace.attributes.route.templated.parameters.enabled` | `true` | When retrieving templated paths for routes, will also attempt to retrieve the path parameters and set as span attributes if possible. Will appear as `http.request.route.path_parameter.{templated_parameter_name}`. Is disabled if `fr.observability.trace.attributes.route.templated` is disabled. |
