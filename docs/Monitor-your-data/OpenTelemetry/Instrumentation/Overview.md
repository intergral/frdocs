

# Instrumentation Overview

Instrumentation is the process of enabling your application to generate and send telemetry data (traces, metrics, and logs). In modern OpenTelemetry, there are two primary ways to achieve this: **Zero-code** and **Manual**.

### 1. Zero-code (Automatic) Instrumentation

This is the recommended starting point for most users. It allows you to gather telemetry without modifying your application’s source code.

* **How it works:** You use a language-specific agent or a Kubernetes Operator to "inject" observability into your application at runtime.
* **Benefits:** Instant visibility into HTTP requests, database queries, and external API calls with zero effort.
* **Best for:** Java, Python, .NET, Node.js, and Go (via eBPF).

[Learn more about Automatic Instrumentation](https://www.google.com/search?q=https://opentelemetry.io/docs/concepts/instrumentation/automatic/)

### 2. Code-based (Manual) Instrumentation

Manual instrumentation is used when you need to capture specific business logic or custom events that automatic tools cannot see.

* **How it works:** You use the OpenTelemetry API within your source code to start spans, record custom metrics, or add specific attributes to your logs.
* **Benefits:** Provides high-precision data tailored to your specific business requirements.
* **Best for:** Custom performance requirements and complex business workflows.

[Learn more about Manual Instrumentation](https://www.google.com/search?q=https://opentelemetry.io/docs/concepts/instrumentation/manual/)

---

### Which language are you using?

The setup varies depending on your tech stack. We recommend following the official OpenTelemetry language guides for the most up-to-date SDK configurations:

|  |  |  |
| --- | --- | --- |
| **[Java](https://www.google.com/search?q=https://opentelemetry.io/docs/languages/java/)** | **[Python](https://www.google.com/search?q=https://opentelemetry.io/docs/languages/python/)** | **[Go](https://www.google.com/search?q=https://opentelemetry.io/docs/languages/go/)** |
| **[Node.js](https://www.google.com/search?q=https://opentelemetry.io/docs/languages/js/)** | **[.NET](https://www.google.com/search?q=https://opentelemetry.io/docs/languages/net/)** | **[C++](https://www.google.com/search?q=https://opentelemetry.io/docs/languages/cpp/)** |

---

### Next Step: Shipping your data

Once your application is instrumented, you need to send that data to FusionReactor.

**[Go to Shipping Telemetry Overview](/Monitor-your-data/OpenTelemetry/Shipping/overview/)**



