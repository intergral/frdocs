# Redis

## Semantic Span Attributes
| Attribute Key/Name | Attribute Value | Obfuscated/Unset when `-Dfr.observability.trace.attributes.semantics.obfuscation.enabled=true` |
| -- | -------- | -- |
| net.peer.name | Remote hostname. | True |
| net.peer.port | Remote port. | True |
| db.statement | The database statement being executed. | True |
| db.system | Name of the database system being used. In this case, redis. | False |
| db.operation | The database operation being executed as uppercase. e.g. SET | False |
| db.redis.database_index | In non-clustered environments, the redis database index being executed against. | False |

## Things to be aware of

- The `db.redis.database_index` attribute is only available when not clustered.
- The `db.statement` attribute value may not be an exact one-to-one of the executed Redis statement.
- Async transactions will have a callback child span which signals when the transaction ended.


## Properties for Redis
There are no system properties that are specific to Redis. Check the [attributes page](../attributes.md#properties-used-for-attributes) for general properties that affect Redis.

## Example Span
| <a href="/images/Tracing/redissonexample.png" target="_blank">![](/images/Tracing/redissonexample.png)</a> |
| -- |
| An example of a simple Redisson span. |
