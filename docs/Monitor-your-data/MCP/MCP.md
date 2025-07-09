

# Installing the FusionReactor Cloud MCP

To connect your AI tooling to FusionReactor Cloud using MCP, follow the steps below.

---

## Step 1: Generate a FusionReactor API Key

You’ll need an API key so your tooling can authenticate with the FusionReactor MCP.

!!! info
    [Generate an FR API key](https://docs.fusionreactor.io/Admin-and-data/Account/Cloud/users/?h=api+key#api-keys)

---

## Step 2: Install and configure the MCP adapter

FusionReactor Cloud MCP is based on the [Grafana MCP adapter](https://github.com/grafana/mcp-grafana).

Follow Grafana’s instructions to install the adapter. Use the following values during setup:

- `GRAFANA_URL`: [`https://api.fusionreactor.io/g`](https://api.staging.streamhippo.io/g)
- `GRAFANA_API_KEY`: Your FusionReactor Cloud API Key  
  *(Ignore all references to Service Accounts and Service Tokens.)*

---

## Additional notes

- This MCP interface is **read-only** – it allows querying data, not modifying it.
- See the [features section](https://github.com/grafana/mcp-grafana?tab=readme-ov-file#features) of Grafana MCP for a full list of supported functionality.

