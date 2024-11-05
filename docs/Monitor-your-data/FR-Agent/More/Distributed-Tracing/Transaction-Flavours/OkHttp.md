# OkHttp

## Semantic Span Attributes
| Attribute Key/Name | Attribute Value | Obfuscated/Unset when `-Dfr.observability.trace.attributes.semantics.obfuscation.enabled=true` |
| -- | -------- | -- |
| net.peer.name | Remote hostname. | True |
| net.peer.port | Remote port. | True |
| http.method | HTTP request method. | False |
| http.url | Full HTTP request URL. | Query String |
| http.flavor | HTTP response protocol. | False |
| http.status_code | HTTP response status code. | False |
| http.request.header.{header_key} | The HTTP header value corresponding to the specified request header key. | False |
| http.response.header.{header_key} | The HTTP header value corresponding to the specified response header key. | False |


## Span Name
Span names for OkHttp are `HTTP ` followed by the HTTP request method e.g `HTTP GET`.

## Specifying HTTP Header Attributes
An HTTP header attribute will be set on a span if there's a header on the request/response whose header key matches one of the user-specified header keys.

####Methods to Specify Header Keys:

- Within the on premise FusionReactor UI, go to Requests Settings and specify the headers within the `Add Request/Response Header Names` form inputs and save.
- Within the reactor.conf, set `request.header.names={comma-separated list of header keys/names}` for request headers and `response.header.names={comma-separated list of header keys/names}` for response headers.
- With System Properties, set `-Dfr.observability.trace.attributes.request.headers={comma-separated list of header keys/names}` for request headers and `-Dfr.observability.trace.attributes.response.headers={comma-separated list of header keys/names}` for response headers.

## Things to be aware of

- The header_keys in `http.request.header.{header_key}` and `http.response.header.{header_key}` are forced to lowercase and have their `-` characters replaced with `_`.
- You can combine specifying header keys via system properties and FusionReactor configuration.
- OkHttp transactions won't have the trace propagation headers on requests within the FusionReactor UI.
- Trace propagation to OkHttp async callbacks is currently not supported.


## Properties for OkHttp
Check the [attributes page](../attributes.md#properties-used-for-attributes) for general properties that can affect OkHttp transactions.

| Property Key | Default | Description |
| -- | -- | -------- |
| `fr.observability.trace.attributes.request.headers` | `""` | Comma separated list of request header names to match and attach header to WebRequest, OkHttp and Httpclient span attributes. |
| `fr.observability.trace.attributes.response.headers` | `""` | Comma separated list of response header names to match and attach header to WebRequest, OkHttp and Httpclient span attributes. |
