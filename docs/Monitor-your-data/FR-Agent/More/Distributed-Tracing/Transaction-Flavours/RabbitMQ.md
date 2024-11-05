# RabbitMQ

## Semantic Span Attributes
| Attribute Key/Name | Attribute Value | Obfuscated/Unset when `-Dfr.observability.trace.attributes.semantics.obfuscation.enabled=true` |
| -- | -------- | -- |
| net.peer.name | Remote hostname. | True |
| net.peer.port | Remote port. | True |
| messaging.system | The type of messaging system. The value will be `rabbitmq` | False |
| messaging.destination_kind | The kind of messaging destination. The value will be `queue` | False |
| messaging.rabbitmq.command | The RabbitMQ command. e.g. `basic.get` | False |
| messaging.destination | The exchange. | False |
| messaging.rabbitmq.routing_key | The routing key. | False |
| messaging.rabbitmq.delivery_mode | The integer value of the delivery mode. | False |
| messaging.message_payload_size_bytes | The size, in bytes, of the received payload. | False |
| messaging.operation | The kind of messaging operation. Value will be `receive` for basicGet and `process` for handleDelivery. | False |
| messaging.rabbitmq.queue | Name of the queue. | False |
| messaging.queue_time_ms | How long the message was queued for in milliseconds. Is present if the received message's properties has a timestamp set. | False |
| messaging.rabbitmq.header.{header_key} | The header value corresponding to the specified header key. Will be forced to lowercase and have `-` characters replaced with `_`  | False |

## Span Name
Span names for producer/publisher spans are formatted as `{exchange name} send`, whilst receiver and processor spans are formatted as `{queue name} {messaging operation}`. Other RabbitMQ spans will be called `{RabbitMQ command}`.


## Things to be aware of

- There are three modes of trace propagation for RabbitMQ spans which can be set via `observability.trace.propagation.messaging.type=(parent|link|none)` in reactor.conf or `-Dfr.observability.trace.propagation.messaging.type=(parent|link|none)`. They are:
    - None (Default) - sent messages won't propagate trace information to message receivers.
    - Link - sent messages will propagate trace information which the message receivers will use to start a new trace for the receiving transaction but will add a link to the span which sent the message.
    - Parent - sent messages will propagate trace information which the message receivers will use to append the receiving span to the producer span. Both the producing process and the receiving process will be on the same trace.
- You can change the propagation type, during runtime, by finding the Tracing section within the FusionReactor settings.
- Queue name will be `<default>` if not found and `<generated>` if it starts with `amq.gen-`.
- The exchange name will be `<default>` if not found.
- Track up to 10 message headers by settings a comma-separated list of header keys via `-Dfr.observability.trace.rabbitmq.headers=`.


## Properties for RabbitMQ
Check the [attributes page](../attributes.md#properties-used-for-attributes) for general properties that affect RabbitMQ spans.

| Property Key | Default | Description |
| -- | -- | -------- |
| `fr.observability.trace.propagation.messaging.type` | `none` | Determines the propagation relationship for messaging spans ( Kafka/RabbitMQ ). Options are `none`, `link` and `parent`. If `none`, headers aren't injected when producing and aren't extracted on consuming. If `link`, the consumer span will set the propagated trace context as a link. If `parent`, the consumer span will set the propagated trace context as a parent. Headers are injected for both link and parent. |
| `fr.observability.trace.rabbitmq.headers`           | ``     | Comma-separated list of header names/keys to track for RabbitMQ basicDelivery and basicPublish transactions. Maximum of 10 allowed.                                                                                                                                                                                                                                                                                           |


## Example Span
| <a href="/images/Tracing/rabbitmqexample.png" target="_blank">![](/images/Tracing/rabbitmqexample.png)</a> |
| -- |
| Example of a RabbitMQ trace with propagation type set to `parent`. The producer/publisher span (`<default> send`) has been set as the parent of the consumer/receiver span (`<generated> process`) on the same trace.|

| <a href="/images/Tracing/rabbitmqlinkexample.png" target="_blank">![](/images/Tracing/rabbitmqlinkexample.png)</a> |
| -- |
| The same span as before, but this time the propagation type has been set to `link`. The consumer/receiver span is on a different trace to the span which produced it, but it has a hyperlink to view said span.|
