# Instrumentation Overview

Instrumentation enables your application to generate and send telemetry data (traces, metrics, and logs). OpenTelemetry provides two primary approaches: **Zero-code** and **Manual**.

### 1. Zero-code (Automatic) Instrumentation

This is the recommended starting point for most users. It allows you to gather telemetry without modifying your application's source code.

* **How it works:** A language-specific agent or Kubernetes Operator injects observability into your application at runtime.
* **Benefits:** Instant visibility into HTTP requests, database queries, and external API calls without code changes.
* **Best for:** Java, Python, .NET, Node.js, and Go (via eBPF).

!!! info "Learn more"
    [Automatic Instrumentation](https://opentelemetry.io/docs/concepts/instrumentation/automatic/)

### 2. Code-based (Manual) Instrumentation

Manual instrumentation captures specific business logic or custom events that automatic tools cannot detect.

* **How it works:** Use the OpenTelemetry API in your source code to create spans, record custom metrics, or add specific attributes to logs.
* **Benefits:** High-precision data tailored to your business requirements.
* **Best for:** Custom performance tracking and complex business workflows.

!!! info "Learn more"
    [Manual Instrumentation](https://opentelemetry.io/docs/concepts/instrumentation/manual/)

---

### Language-specific guides

Setup varies by tech stack. Follow the official OpenTelemetry language guides for the most up-to-date SDK configurations:

|  |  |  |
| --- | --- | --- |
| **[Java](https://opentelemetry.io/docs/languages/java/)** | **[Python](https://opentelemetry.io/docs/languages/python/)** | **[Go](https://opentelemetry.io/docs/languages/go/)** |
| **[Node.js](https://opentelemetry.io/docs/languages/js/)** | **[.NET](https://opentelemetry.io/docs/languages/net/)** | **[C++](https://opentelemetry.io/docs/languages/cpp/)** |

---

### Next step: Shipping your data

Once your application is instrumented, the next step is sending that data to FusionReactor Cloud.

[Shipping Telemetry Overview](/Monitor-your-data/OpenTelemetry/Shipping/overview/)
