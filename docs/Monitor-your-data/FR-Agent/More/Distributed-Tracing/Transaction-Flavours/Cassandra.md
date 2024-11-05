# Cassandra

## Semantic Span Attributes

| Attribute Key/Name | Attribute Value | Obfuscated/Unset when `-Dfr.observability.trace.attributes.semantics.obfuscation.enabled=true` |
| -- | -------- | -- |
| net.peer.name | Remote hostname. | True |
| net.peer.port | Remote port. | True |
| db.name | Name of the database. | False |
| db.operation | The database operation being executed. | False |
| db.statement | The database statement being executed. | True |
| db.system | Name of the database system being used. In this case, cassandra. | False |
| db.name | The keyspace. | False |
| db.cassandra.table | The table. | False |

## Span Name
Span names for Cassandra transaction spans take the form `{db.operation} {db.name}.{db.cassandra.table}`.

## Properties for Cassandra
Check the [attributes page](../attributes.md#properties-used-for-attributes) for general properties that can affect Cassandra transactions.
