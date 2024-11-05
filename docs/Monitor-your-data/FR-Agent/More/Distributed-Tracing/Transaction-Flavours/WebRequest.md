# WebRequest

## Semantic span attributes
| Attribute key/name | Attribute value | Obfuscated/unset when `-Dfr.observability.trace.attributes.semantics.obfuscation.enabled=true` |
| -- | -------- | -- |
| net.peer.name | Remote hostname. | True |
| net.peer.ip | Remote IP | True |
| net.peer.port | Remote port. | True |
| http.method | HTTP request method. | False |
| http.url | Full HTTP request URL. | Query string |
| http.flavor | HTTP protocol. | False |
| http.user_agent | HTTP user-agent header value. | False |
| http.status_code | HTTP response status code. | False |
| http.response.content_length | HTTP response payload in bytes. | False |
| http.request.header.{header_key} | The HTTP header value corresponding to the specified request header key. | False |
| http.response.header.{header_key} | The HTTP header value corresponding to the specified response header key. | False |
| http.request.route.path_parameter.{templated_parameter_name} | When span names are the templated route, the actual, templated value is stored as a span attribute. | False |

## Span name
Span names for WebRequests are the request path.

!!! example
     `/api/endpoint` (with no query string) or other URL representations. Can also be templated route - `/documents/{document_id}`.

## Specifying HTTP header attributes 
An HTTP header attribute will be set on a span if there's a header on the request/response whose header key matches one of the user-specified header keys.

### Methods to specify header keys:

#### On-premise FusionReactor UI
Within the on premise FusionReactor UI, go to **Requests Settings** and specify the headers within the **Add Request/Response Header Names** form inputs and save.

#### reactor.conf
Within the reactor.conf, set `request.header.names={comma-separated list of header keys/names}` for request headers and `response.header.names={comma-separated list of header keys/names}` for response headers.

#### System properties
Within **System properties**, set `-Dfr.observability.trace.attributes.request.headers={comma-separated list of header keys/names}` for request headers and `-Dfr.observability.trace.attributes.response.headers={comma-separated list of header keys/names}` for response headers. 

## Things to be aware of

- The header_keys in `http.request.header.{header_key}` and `http.response.header.{header_key}` are forced to lowercase and have their `-` characters replaced with `_`.
- You can combine specifying header keys via system properties and FusionReactor configuration. 
- For templated routes e.g. `/documents/{document_id}`, the span name will become the templated route and any templated parameters will be added as a span attribute as `http.request.route.path_parameter.{templated_parameter_name}`.


## Properties for WebRequest
Check the [attributes page](../attributes.md#properties-used-for-attributes) for general properties that can affect WebRequests.

| Property key | Default | Description |
| -- | -- | -------- |
| `fr.observability.trace.attributes.request.headers` | `""` | Comma separated list of request header names to match and attach header to WebRequest, OkHttp and Httpclient span attributes. |
| `fr.observability.trace.attributes.response.headers` | `""` | Comma separated list of response header names to match and attach header to WebRequest, OkHttp and Httpclient span attributes. |
| `fr.observability.trace.attributes.route.templated.enabled`            | `true` | Whether to attempt to process request objects for their templated path/route when possible. This will be set as the span name for the master transaction's span. E.g. `/show/{user}` instead of `/show/user001`                                                                                       |
| `fr.observability.trace.attributes.route.templated.parameters.enabled` | `true` | When retrieving templated paths for routes, also attempts to retrieve the path parameters and set as span attributes if possible. Appears as `http.request.route.path_parameter.{templated_parameter_name}`. Is disabled if `fr.observability.trace.attributes.route.templated` is disabled. |


## Example span
| <a href="/images/Tracing/webrequestexample.png" target="_blank">![](/images/Tracing/webrequestexample.png)</a> |
| -- |
| Brief example of an WebRequest span. |
