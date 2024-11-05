# Propagators
In order for instances/services to propagate trace information to other services, they inject trace information as headers on outgoing requests. Receiving instances/services extract this information from the headers and use it when building spans, ensuring that the information is propagated.  


!!! warning "Trace header formats"
    Not all vendors use the same format for propagating trace information in headers. 

## Trace propagators supported by FusionReactor
| Header format | Property value |
| -- | -- |
| W3C Trace Context | `tracecontext` |
| W3C Baggage | `baggage` |
| B3 Single | `b3` |
| B3 Multi | `b3multi` |
| Jaeger | `jaegar` |
| AWS X-Ray | `xray` |
| OT Trace | `ottrace` |


## Properties used for propagation
Add to JVM arguments/options by prepending with `-D`.

| Property key | Default | Description |
| -- | -- | -------- |
| `fr.observability.trace.propagators` | `"tracecontext,baggage"` | A comma-separated list of propagators to use. <br> Options: `tracecontext`,`baggage`,`b3`,`b3multi`,`jaeger`,`xray`,`ottrace`. <br> Use `all` to use all of them. |

---

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.