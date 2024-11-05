# JDBCRequest

## Semantic Span Attributes
| Attribute Key/Name | Attribute Value | Obfuscated/Unset when `-Dfr.observability.trace.attributes.semantics.obfuscation.enabled=true` |
| -- | -------- | -- |
| net.peer.name | Remote hostname. | True |
| net.peer.port | Remote port. | True |
| db.user | The username for accessing the database. [Attribute is disabled by default.](#Properties-for-JDBCRequest) | True |
| db.statement | The database statement being executed. | True |
| db.system | Name of the database system being used. e.g. mysql, mariadb, etc. | False |
| db.name | Name of the database. | False |
| db.operation | The database operation being executed as uppercase. e.g. INSERT, CREATE, etc. | False |
| db.sql.table | The database table being executed against. <b>Warning: Is forced to lowercase.</b> | False |
| db.coldfusion.query.name | Name value of the cfquery. | False |
| db.coldfusion.datasource.name | Datasource value of the cfquery. | False |

## Span Name
Span names for JDBCRequests have the format of `{db.operation} {db.name}.{db.sql.table}`.


## Things to be aware of

- DB2 may not have a `db.user` attribute.
- The database table name is always forced to lowercase.
- DerbyEmbedded and DerbyMemory will have the net.peer.name attribute set as `embedded`.


## Properties for JDBCRequest
Check the [attributes page](../attributes.md#properties-used-for-attributes) for general properties that affect JDBCRequests.
| Property Key | Default | Description |
| -- | -- | -------- |
| `fr.observability.trace.jdbc.extra_attributes.enabled`                  | `false` | When enabled, sets the `db.user` span attribute. |

## Example Span
| <a href="/images/Tracing/jdbcexample.png" target="_blank">![](/images/Tracing/jdbcexample.png)</a> |
| -- |
| Example of a JDBCRequest span generated using `<cfquery name="q" datasource="cfbookclub">`. |
