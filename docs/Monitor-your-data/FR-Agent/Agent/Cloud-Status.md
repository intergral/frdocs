# Cloud Status

The **Cloud Status** page is accessed via the Cloud menu in the upper notification area, then selecting **Status**. It shows the current status of FusionReactor's connections to OpsPilot.

![](/Monitor-your-data/FR-Agent/Agent/cloudstatusexample.png)

The page is split into a **Health Check** section and two subsections: **Control Channel** and **Telemetry Shippers**.

### Logging

Changes in cloud connection state are recorded in the [Cloud State Log](/Data-insights/Features/Logs/Files/Cloud-State-Log/).

## Health Check

The **Health Check** shows the current cloud connection status. Two failure states are possible:

- **Degraded** - Control Channel failure, or one or more Telemetry Shippers in retry mode.
- **Failed** - Both the Control Channel and all Telemetry Shippers have failed.

## Control Channel

The **Control Channel** provides two-way communication between FusionReactor and OpsPilot. It enables real-time functionality such as Stack Trace and Running Requests.

The channel is established when the instance starts and FusionReactor will attempt to reconnect if it becomes unavailable.

| Field | Appears | Description |
|-------|---------|-------------|
| Status | Always | Current state of the connection. |
| Endpoint | Always | The server, protocol, and port used for the connection. |
| Connected Since | Connected | When the connection was established. |
| Disconnected Since | Disconnected | When the connection was lost. |
| Attempting to Reconnect | Disconnected | Whether the system is trying to reconnect. |
| Last Exception | If an exception has occurred | The last exception caught, with causes if any. |

### Troubleshooting

| Failure | Presentation | Resolution |
|---------|-------------|------------|
| DNS failure | `Can't resolve xx.yy` | Ensure the instance uses a DNS server that can resolve internet addresses and is connected to the network. |
| Connection failure | `Couldn't connect` or `Timed out` | Ensure the instance can reach the Control Channel through your firewall. See [Static Licensing Endpoints](/Admin-and-data/Licensing/Static-Licensing-Endpoints/). |

## Telemetry Shippers

The **Telemetry Shippers** collect and forward metrics, logs, and traces from the FusionReactor agent to OpsPilot. There are three shippers:

- **PrometheusRemoteWriteShipper** - metrics
- **LogShipper** - logs
- **SpanShipper** - traces/spans

Shippers are reliable - any data that cannot be transferred is queued and sent when the connection recovers. If the queue limit is exceeded, older data is dropped in favour of newer data.

| Field | Description |
|-------|-------------|
| Enabled | Whether the shipper is active. |
| Endpoint | Where data is being sent. |
| Ship Rate (ms) | How often data is sent. |
| Queued Requests | Data requests waiting to be sent. |
| Last Request Succeeded | Whether the last send was successful. |
| Last Request Completed At | Timestamp of the last send. |

## Support Functions

**Automatic Refresh** can be set using the dropdown at the top right. **Copy to Clipboard** copies all displayed information in a format the support team can use to help diagnose issues.
