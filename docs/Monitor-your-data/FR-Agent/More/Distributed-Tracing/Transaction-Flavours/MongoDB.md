# MongoDB

## Semantic Span Attributes

| Attribute Key/Name | Attribute Value | Obfuscated/Unset when `-Dfr.observability.trace.attributes.semantics.obfuscation.enabled=true` |
| -- | -------- | -- |
| net.peer.ip | Remote IP. | True |
| net.peer.name | Remote hostname. | True |
| net.peer.port | Remote port. | True |
| db.name | Name of the database. | False |
| db.operation | The database operation being executed. | False |
| db.statement | The database statement being executed. | True |
| db.system | Name of the database system being used. In this case, mongodb. | False |
| db.mongodb.collection | The mongodb collection being executed against. | False |

## Span Name
Span names for MongoDB transaction spans take the form `{db.operation} {db.name}.{db.mongodb.collection}`.

## Things to be aware of

- Semantic attributes aren't available for mongo-async-driver with versions earlier than 3.3.0
- Semantic attributes may be less accurate for versions earlier than 3.1.0
- Transaction settings, MongoDB Explain and Capture MongoDB results, aren't supported for new versions. It's best to disable them when using versions 4.0.0 and later.

## Properties for MongoDB
Check the [attributes page](../attributes.md#properties-used-for-attributes) for general properties that can affect MongoDB transactions.

| Property Key | Default | Description |
| -- | -- | -------- |
| `fr.observability.trace.propagation.mongoreadoperation.enabled`        | `true` | If enabled, allows MongoDB transactions to propagate trace context to ReadOperation, resulting in ReadOperation being a child span of MongoDB span. |
| `fr.observability.trace.sampling.fullmongotrace.enabled`               | `true` | If enabled, spans will be created for all Mongo related transactions. If disabled, spans will only be created for the main MongoDBConnection/MongoDBCommand transactions, when commands are sent to Mongo. |
| `fr.observability.trace.mongodb.listener.enabled`                      | `true` | If enabled, an attempt will be made to add a CommandListener to MongoClients to achieve improved tracing. |
| `fr.observability.trace.mongodb.clonedocument.enabled`                 | `false` | If enabled, will clone the command document in the CommandListener when it used. |
| `fr.observability.trace.mongodb.statement.length.max`                  | `32 * 1024` | The maximum length for the `db.statement` span attribute for MongoDB spans. |


## Example Span
| <a href="/images/Tracing/mongoexample.png" target="_blank">![](/images/Tracing/mongoexample.png)</a> |
| -- |
| Example of a Mongo trace. The spans with names starting with `find` and `getMore` are the main/operation spans. |

| <a href="/images/Tracing/mongoasyncexample.png" target="_blank">![](/images/Tracing/mongoasyncexample.png)</a> |
| -- |
| Example of a Mongo async trace. |
