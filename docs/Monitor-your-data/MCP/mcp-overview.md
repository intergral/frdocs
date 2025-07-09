

# MCP: the Model Context Protocol

**MCP** - the [Model Context Protocol](https://modelcontextprotocol.io/introduction) - is a standardized way for software vendors to make their applications interface to AI tooling. Using MCP, AI models can get up-to-date information to augment their training models.

MCP was developed by [Anthropic](https://www.anthropic.com/news/model-context-protocol), but is vendor-neutral. Many AI providers offer MCP interfaces to their models, and many software vendors provide MCP interfaces into their products.

FusionReactor currently provides one MCP interface, the **FusionReactor Cloud MCP**.

## FusionReactor Cloud MCP

Users of FusionReactor Cloud have the ability to connect their AI tooling to their FR Cloud data using the [Model Context Protocol](https://modelcontextprotocol.io/introduction), a standard tool interface which allows AI models to communicate in real time with external tools.

MCP is used by many providers, including Claude Desktop, to help AI tooling access (and in some cases effect change in) external tools and systems.

The FusionReactor Cloud MCP is an integration of the [Grafana MCP](https://github.com/grafana/mcp-grafana) project.


### Key Capabilities

- Perform queries against Metrics (Mimir/Prometheus) and Logs (Loki).
- Get dashboards, panels, and the queries behind those panels – and run them directly (Prometheus and Loki only).

!!! note 
    The FusionReactor Cloud MCP is a **read-only** data source – you can’t make changes to your account using it.
