# Elasticsearch

## Semantic Span Attributes
| Attribute Key/Name | Attribute Value | Obfuscated/Unset when `-Dfr.observability.trace.attributes.semantics.obfuscation.enabled=true` |
| -- | -------- | -- |
| net.peer.name | Remote hostname. | True |
| net.peer.port | Remote port. | True |
| db.statement | The database statement being executed. Will be `{HTTP method} {URL path}`  | False |
| db.system | Name of the database system being used. In this case, elasticsearch. | False |
| db.operation | The database operation being executed as uppercase. This is the HTTP method, e.g. PUT,... | False |
| db.elasticsearch.index | The elasticsearch index being executed against. | False |

## Span Name
Span names for elasticsearch transaction spans are the HTTP method associated with the Database operation. e.g `PUT`.

## Things to be aware of

- The `db.elasticsearch.index` attribute may sometimes not be present and other times may contain multiple values.
- Async Elasticsearch requests can have a callback span.
- Use the `subFlavour` span attribute to gain greater insight into the type of elasticsearch command is being executed.
- Tracing may not be supported for versions of Elasticsearch above 7.13.4


## Properties for ElasticSearch
There are no system properties that are specific to Elasticsearch. Check the [attributes page](../attributes.md#properties-used-for-attributes) for general properties that affect Elasticsearch.


## Example Span
| <a href="/images/Tracing/elasticsearchexample.png" target="_blank">![](/images/Tracing/elasticsearchexample.png)</a> |
| -- |
| Brief example of an Elasticsearch span. |
