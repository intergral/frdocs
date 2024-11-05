# Get started with FusionReactor 

Welcome to the FusionReactor APM platform! Our CFML monitoring tool provides deep visibility into your systems, helping you solve issues you may not have been aware of, regardless of the technology you use. FusionReactor offers numerous ways to enhance visibility, allowing you to monitor, troubleshoot, and improve digital performance. 
<br>
Here's a brief overview of our most popular capabilities and features.


## Alerting 

![Image title](../images/Getting-started/GSalert.png){ align=left width="350" height="250" } FusionReactor Alerting allows  you to create automated checks on the values of metric data gathered by a FusionReactor agent, and generate  alerts when user-made conditions are  met. <br>  Learn more about Alerting **[here](/Cloud/guides/dashboards/)**.

<br>

## Anomaly Detection

![Image title](../images/Getting-started/AD1.png){ align=right width="350" height="250" } Anomaly detection is an algorithmic capability designed to recognize instances when a metric displays behavior that diverges from its historical patterns.  <br>  Learn more about Anomaly Detection **[here](/Cloud/guides/dashboards/)**.


## Crash Protection

![Image title](../images/Getting-started/CrashP.png){ align=left width="350" height="250" } Crash Protection gives you the ability to alert when the application server is experiencing issues and prevent application servers from crashing.<br>  Learn more about Crash Protection **[here](/Cloud/guides/dashboards/)**.

<br>

## Dashboards 


![Image title](../images/Getting-started/dashboards.png){ align=right width="350" height="250"} Dashboards allow you to visualize your Cloud data with superior, unparalleled depth. You can combine metrics, logs and traces in one place to give you a complete picture of your data.<br> Learn more about Dashboards **[here](/Cloud/guides/alerting/)**.

<br>

## Debugger


![Image title](../images/Getting-started/debug.png){ align=left width="350" height="250"} FusionReactor Production Debugger is a new set of functionality available in the FusionReactor Ultimate Edition from version 6.0. and it provides the ideal solution for developers to gain insight into how code executes at production runtime <br> Learn more about the Debugger **[here](#)**.


## Enterprize Dashboard


![Image title](../images/Getting-started/ED1.png){ align=right width="350" height="250"} The Enterprise Dashboard lets you track the state of installations on one or more servers from a single window. Immediately see the state of memory, CPU, DB load and average request time, in a clear, visual dashboard <br> Learn more about the Enterprize Dashboard **[here](#)**. 

## Explore
![Image title](../images/Getting-started/explore.png){ align=left width="350" height="250"} Explore allows you to query and analyse all metrics, logs and traces ingested to your cloud account. Create new data views and filter data in any way you require. <br> Learn more about Explore **[here](#)**. 


## OpsPilot 
![Image title](../images/Getting-started/OP.png){ align=right width="350" height="250"} OpsPilot is designed to elevate observability for every team member, transcending the boundaries of engineering to construct a comprehensive context around your systems. <br> Learn more about OpsPilot **[here](#)**. 


<br>
## Profiler

![Image title](../images/Getting-started/profiler.png){ align=left width="350" height="250"} The Profiler is designed to help you identify performance bottlenecks in your production environment with **very** low overhead, so you gain maximum benefit, without impacting your running applications. Learn more about the Profiler **[here](#)**. 

<br>

## Get started

Already have a FusionReactor account? Then you're good to go.  

If you're **new** to FusionReactor, just follow the easy steps below to register.


### Register for a trial

FusionReactor gives you additional powerful capability and innovative ways to analyze your metrics as well as log data. 
  
Starting a **free 14-day trial** is simple: 

 **Step 1**: Register for a [FusionReactor](https://app.fusionreactor.io/auth/register) trial account.
 
 **Step 2**:  Login to your new account.


!!! info
    All FusionReactor  users will have the On-Prem (on-premises) implementation (user interface). That’s the classic implementation of FR.  



### Ingest data into the Cloud

![!Screenshot](../../images/Getting started/ingest.png)

Use a combination of the three ingest methods to get powerful insight into your full stack.



<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/870988379?badge=0&amp;autopause=0&amp;quality_selector=1&amp;progress_bar=1&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="FusionReactor quickstart guide"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

#### FusionReactor Java Agent

With FusionReactor Cloud APM, you can diagnose both live and historic issues with our powerful metrics engine and dashboards.

Our APM goes beyond Java and ColdFusion to deliver a combination of metrics, profiles, logs, and code enabling you to quickly understand and diagnose issues on your application or your server'


!!! info "Learn more"
    [FusionReactor Java Agent](/Getting-started/GSFRJA/)

!!! note
    Installing the agent also gives access to the On-Premise UI.

#### Observability Agent

Integrations allow you to ingest vital metrics to monitor the health of your entire infrastructure. Installing the Observability Agent, an [open source](https://github.com/intergral/observability-agent/releases) autoconfiguration and installation tool, allows you to export metrics, logs and OTel data from all aspects of your stack into the cloud, with no configuration required. The Observability Agent can detect which services are running on your machine, and automatically create a configuration file with integrations for detected services.


#### Instrument OpenTelemetry

OpenTelemetry is an open-source project created by the Cloud Native Computing Foundation (CNCF) consisting of APIs, SDKs, and tools to help developers create, monitor, and export their system data (metrics, traces, logs and more) to observability back-ends. We recommend installing the [Observability Agent](/Cloud/integrations/Metric-Integrations/) and adding the OTel component to allow receiving of traces, logs and metrics.

!!! info "Learn more"
    [OpenTelemetry](https://opentelemetry.io/docs/getting-started/)


#### Kubernetes

Kubernetes (also known as K8s) is an open-source container orchestration platform that automates the deployment, scaling, and management of containerized applications. The [Kubernetes-Prometheus-Stack](https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack) is a deployable Helm chart which enables monitoring of Kubernetes clusters in FusionReactor Cloud. This stack is meant for cluster monitoring, so it is pre-configured to collect metrics from all Kubernetes components.

!!! info "Learn more"
    [Kubernetes](/Cloud/platform-integrations/shippingK8stoFR/)

#### Programming languages supported

![!Screenshot](../../images/Getting started/proglang.png)

!!! info "Learn more"
    [OTel status & releases](https://opentelemetry.io/docs/instrumentation/#status-and-release)



### Visualize your data

With FusionReactor Cloud, you can diagnose both live and historic issues with our powerful metrics engine and dashboards. 

!!! info "Learn more"
    [Visualize data in Cloud](/Getting-started/DVCloud/)


<br>
