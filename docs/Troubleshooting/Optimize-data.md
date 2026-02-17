# How to reduce trace sampling data and optimize billing costs

This guide explains how to **reduce trace sampling data** sent to FusionReactor Cloud, helping you optimize billing costs while maintaining effective observability. By adjusting sampling ratios, you can control data volumes without sacrificing critical insights into application performance.

## Overview

When you need to **reduce trace sampling data** to manage costs or bandwidth, FusionReactor provides flexible sampling controls for both FusionReactor agent and OpenTelemetry applications. All tracing data uses sampling to capture representative examples of normal transactions alongside errors and slow requests for comparison.

!!! note "Default sampling rates"
    - **FusionReactor Agent**: Default sampling ratio is **5%** (0.05) of all traces
    - **OpenTelemetry**: Default sampling ratio is **100%** (1.0) of all traces

## When to reduce trace sampling data

Consider adjusting sampling ratios in these scenarios:

* **High-volume applications** generating thousands of traces per second
* **Cost optimization** when approaching or exceeding your billing tier
* **Bandwidth constraints** in network-limited environments
* **Development/staging environments** where full trace capture isn't necessary
* **Well-understood services** that don't require detailed monitoring

!!! warning "Important"
    Lower sampling rates reduce the number of traces captured, which may affect your ability to detect infrequent issues. Always balance cost savings with observability needs.

## Configuration methods

### FusionReactor Java Agent

To **reduce trace sampling data** for FusionReactor's Java agent, use the following JVM property:

**Property:** `-Dfr.observability.trace.sampling.ratio`

This property controls the percentage of traces captured and sent to FusionReactor Cloud.

#### Example: Reduce to 3% sampling

```bash
-Dfr.observability.trace.sampling.ratio=0.03
```

#### Example: Reduce to 1% sampling for high-volume services

```bash
-Dfr.observability.trace.sampling.ratio=0.01
```

#### Common sampling ratios

| Sampling Ratio | Percentage | Use Case |
|---------------|------------|----------|
| `1.0` | 100% | Development, debugging, critical services |
| `0.1` | 10% | Standard production monitoring |
| `0.05` | 5% | Default FusionReactor setting |
| `0.03` | 3% | High-volume applications |
| `0.01` | 1% | Very high-volume, cost-sensitive environments |

---

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.

