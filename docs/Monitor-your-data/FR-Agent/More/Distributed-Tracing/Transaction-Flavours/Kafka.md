# Kafka

!!! warning "Read before enabling trace propagation"
    Trace propagation is set to none (disabled) by default due to the chance that some versions of Kafka do not support record headers.
    If a producer supports headers but a consumer doesn't, enabling trace propagation can mean that the consumer is unable to consume records, potentially causing missing data.

## Semantic Span Attributes
| Attribute Key/Name | Attribute Value | Obfuscated/Unset when `-Dfr.observability.trace.attributes.semantics.obfuscation.enabled=true` |
| -- | -------- | -- |
| net.peer.name | Remote hostname. | True |
| net.peer.port | Remote port. | True |
| messaging.system | The type of messaging system. The value will be `kafka` | False |
| messaging.destination_kind | The kind of messaging destination. The value will be `topic` | False |
| messaging.destination | The topic. | False |
| messaging.message_payload_size_bytes | The size, in bytes, of the received payload. | False |
| messaging.operation | The kind of messaging operation. Value will be `receive` for basicGet and `process` for handleDelivery. | False |
| messaging.kafka.partition | The partition the record is on. | False |
| messaging.kafka.consumer_group | The consumer group the consumer belongs to. | False |
| messaging.kafka.offset | The offset of the consumed record. | False |
| messaging.kafka.client_id | The client ID of the producer/consumer. | False |
| messaging.kafka.message_key | The key for the record. Is the String representation of the object. | False |
| messaging.queue_time_ms | How long the message was queued for in milliseconds. Might not be accurate as the timestamp might be created when the record is created not produced. | False |
| messaging.kafka.header.{header_key} | The header value corresponding to the specified header key. Will be forced to lowercase and have `-` characters replaced with `_`  | False |

## Span Name
Span names for producer/publisher spans are formatted as `{topic} send`, whilst receiver and processor spans are formatted as `{topic} {messaging operation}`.


## Things to be aware of

- There are three modes of trace propagation for Kafka spans which can be set via `observability.trace.propagation.messaging.type=(parent|link|none)` in reactor.conf or `-Dfr.observability.trace.propagation.messaging.type=(parent|link|none)`. They are:
    - None (Default) - sent messages won't propagate trace information to message receivers.
    - Link - sent messages will propagate trace information which the message receivers will use to start a new trace for the receiving transaction but will add a link to the span which sent the message.
    - Parent - sent messages will propagate trace information which the message receivers will use to append the receiving span to the producer span. Both the producing process and the receiving process will be on the same trace.
- You can change the propagation type, during runtime, by finding the Tracing section within the FusionReactor settings.
- Topic will be `<unknown_topic>` if not found.
- Track up to 10 message headers by settings a comma-separated list of header keys via `-Dfr.observability.trace.kafka.headers=`.
- The tracked header span attribute value will be added as a list of values which match the key. This doesn't mean the value is a list.
- Callbacks from producing records will be appended to the producer span's parent, if one doesn't exist a new trace will be created.
- When propagation is set to link/none, a span will be created for the consumer poll which will be the parent of all the consumer record spans.


## Properties for Kafka
Check the [attributes page](../attributes.md#properties-used-for-attributes) for general properties that affect Kafka spans.

| Property Key | Default | Description |
| -- | -- | -------- |
| `fr.observability.trace.propagation.messaging.type` | `none` | Determines the propagation relationship for messaging spans ( Kafka/RabbitMQ ). Options are `none`, `link` and `parent`. If `none`, headers aren't injected when producing and aren't extracted on consuming. If `link`, the consumer span will set the propagated trace context as a link. If `parent`, the consumer span will set the propagated trace context as a parent. Headers are injected for both link and parent. |
| `fr.observability.trace.kafka.headers`           | ``     | Comma-separated list of header names/keys to track for Kafka Producer and Consumer transactions. Maximum of 10 allowed.                                                                                                                                                                                                                                                                                           |


## Example Span
| <a href="/images/Tracing/kafkaexample.png" target="_blank">![](/images/Tracing/kafkaexample.png)</a> |
| -- |
| Example of a Kafka trace with propagation type set to `parent`. The producer span (`ota_topic send`) has been set as the parent of the consumer span (`ota_topics process`) on the same trace. The producer callback (`HTTP GET`) has been appended to the producer span's parent. The header has been added as a list even though the value wasn't. |

| <a href="/images/Tracing/kafkalinkexample.png" target="_blank">![](/images/Tracing/kafkalinkexample.png)</a> |
| -- |
| The same span as before, but this time the propagation type has been set to `link`. The consumer/process span is on a different trace to the span which produced it, but it has a hyperlink to view said span. |
