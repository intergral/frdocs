---
hide:
  - navigation
  - toc
---

<style>
.badge {
    display: inline-block;
    padding: 4px 10px;
    border-radius: 8px;
    font-size: 14px;
    font-weight: bold;
    color: white;
}

.badge-purple { background-color: #d8b5ff; color: #5a189a; }
.badge-orange { background-color: #ff9f45; }
.badge-light-orange { background-color: #ffcc99; color: #663300; }
</style>

<span class="badge badge-orange">This documentation is currently in preview and is subject to updates and changes. We're actively working on improvements, and new content will be added regularly. Want help improve these docs? Check out our [How to Contribute](https://intergral.github.io/frdocs/Contribute/how-to-contribute/#contribute-to-the-fr-docs) guide for details on how you can provide feedback.</span>





<!DOCTYPE html>
<html>
<head>
    <title>FusionReactor Journey Steps</title>
    <style>
        .fr-journey-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 40px 20px;
            font-family: Roboto
        }

        .fr-journey-title {
            text-align: center;
            color: #4a5568s;
            margin-bottom: 50px;
            font-size: 2.5em;
            font-weight: 800;
        }

        .fr-steps {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 30px;
        }

        .fr-step {
            flex: 1;
            min-width: 250px;
            background: #53AFDA;
            border-radius: 10px;
            border: 2px solid white;
            padding: 25px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
            transition: transform 0.3s ease;
        }

        .fr-step:hover {
            transform: translateY(-5px);
        }

        .fr-step-number {
            width: 40px;
            height: 40px;
            background: #FFA500;
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.2em;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .fr-step-title {
            font-weight: bold;
            margin-bottom: 1.0rem;
            font-size: 1.15rem;
            color: white;
        }

        .fr-step-description {
            font-size: 0.7rem;
            margin-bottom: 1.0rem;
            flex-grow: 1;
            color: #343942; /* Lighter color for description */
        }

        .fr-step-action {
            width: 100%;
        }

        .fr-btn {
            display: inline-block;
            padding: 0.4rem 1rem;
            background-color: #343942; /* Match the card background */
            color: #343942; /* Light blue text color */
            text-decoration: none;
            border: 2px solid white; /* Light blue border */
            border-radius: 5px;
            font-size: 0.7rem;
            transition: background-color 0.3s, color 0.3s;
        }

        .fr-btn:hover {
            background: white;
        }

        @media (max-width: 768px) {
            .fr-steps {
                flex-direction: column;
            }
            
            .fr-step {
                width: 100%;
            }
            
            .fr-journey-title {
                font-size: 2em;
            }
        }
    </style>
</head>
<body>
    <div class="fr-journey-container">
        <h1 class="fr-journey-title">Start your FusionReactor journey in 4 easy steps!</h1>
        <div class="fr-steps">
            <div class="fr-step">
                <div class="fr-step-number">1</div>
                <div class="fr-step-title">Create your account</div>
                <div class="fr-step-description">Don't have an account? Signing up is easy and only takes a few minutes.</div>
                <div class="fr-step-action">
                    <a href="https://app.fusionreactor.io/auth/login" class="fr-btn">Sign up here</a>
                </div>
            </div>
            <div class="fr-step">
                <div class="fr-step-number">2</div>
                <div class="fr-step-title">Install FusionReactor</div>
                <div class="fr-step-description">Dive into the UI and configure FusionReactor to monitor your stack.</div>
                <div class="fr-step-action">
                    <a href="/frdocs/Getting-started/install-fr/" class="fr-btn">Install FR</a>
                </div>
            </div>
            <div class="fr-step">
                <div class="fr-step-number">3</div>
                <div class="fr-step-title">Start your FR journey</div>
                <div class="fr-step-description">Familiarize yourself with our comprehensive monitoring platform.</div>
                <div class="fr-step-action">
                    <a href="/frdocs/Getting-started/intro-to-fr/" class="fr-btn">Get started</a>
                </div>
            </div>
            <div class="fr-step">
                <div class="fr-step-number">4</div>
                <div class="fr-step-title">Tutorials & walkthroughs</div>
                <div class="fr-step-description">Practical ways to use FusionReactor to solve everyday challenges.</div>
                <div class="fr-step-action">
                    <a href="/frdocs/Getting-started/Tutorials/know-the-ui/" class="fr-btn">Learn more</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>


### POPULAR DOCS

<div class="grid" markdown>

[Get to know the UI](/frdocs/Getting-started/Tutorials/know-the-ui/)  
{ .card }


[Anomaly Detection](/frdocs/Data-insights/Features/Anomaly-Detection/ADoverview/)  
{ .card }


[OpsPilot Hub](/frdocs/Data-insights/Features/OpsPilot/OpsPilot-Hub/overview/)  
{ .card }


[Incidents](/frdocs/Data-insights/Features/Incidents/incidents/)
{ .card }

</div>
### LATEST UPDATES

<div class="grid" markdown>

[What's New](/frdocs/Latest-updates/WhatsNew/)
{ .card }

[Releases](/frdocs/Latest-updates/Releases/)
{ .card }


</div>

### INSTALLATION GUIDES

<div class="grid cards" markdown>

</div>


<div class="grid cards" markdown>

-   __Best Practices__


    ---


    Explores the optimal setup for your environment - local server, scripted, or Docker - ensuring seamless integration and efficient performance.


    [:octicons-arrow-right-24: Learn more](/frdocs/Best-Practices/Installation/installation-overview/)


-   __FusionReactor Agent__


    ---
   Monitor Java and ColdFusion applications to gain real-time and historical insights into web transactions, memory, CPU usage and more.




    [:octicons-arrow-right-24: Learn more](/frdocs/Monitor-your-data/FR-Agent/agent-overview/)


-    __Observability Agent__


    ---


    Monitor many aspects of your infrastructure including databases, Kafka, Docker, machine system metrics and more.


    [:octicons-arrow-right-24: Learn more](/frdocs/Monitor-your-data/Observability-agent/overview/)


-    __OpenTelemetry__


    ---


    Monitor your app's performance with OTel, an open-source framework for collecting, processing, and exporting telemetry data. 


    [:octicons-arrow-right-24: Learn more](/frdocs/Monitor-your-data/OpenTelemetry/getting-started/)


-   __Kubernetes__


    ---


    Monitor your K8s clusters by tracking health and performance of pods, ensuring efficient resource utilization, scaling, and real-time observability.


    [:octicons-arrow-right-24: Learn more](/frdocs/Monitor-your-data/Kubernetes-monitoring/overview/)


-   __Log Monitoring__


    ---


    Monitor logs from any location seamlessly alongside your existing FusionReactor data for unified observability and deeper insights.


    [:octicons-arrow-right-24: Learn more](/frdocs/Monitor-your-data/Log-monitoring/overview/)

-   __Deep__


    ---


    Powered by DeepQL, a monitoring-centric query language inspired by PromQL, Deep enables real-time logging, metrics, tracing, and live data snapshots.


    [:octicons-arrow-right-24: Learn more](/frdocs/Monitor-your-data/Deep/overview/)

</div>


### FEATURES

<div class="grid" markdown>

[Alerting](/frdocs/Data-insights/Features/alerting/)
{ .card }

[Anomaly Detection](/frdocs/Data-insights/Features/Anomaly-Detection/ADoverview/)
{ .card }

[Applications](/frdocs/Data-insights/Features/applications/)
{ .card }

[Crash Protection](frdocs/Data-insights/Features/Crash-protection/Crash-Protection/)
{ .card }

[Dashboards](/frdocs/Data-insights/Features/dashboards/#log-dashboards)
{ .card }

[Debugger](/frdocs/Data-insights/Features/Debugger/Overview/)
{ .card }

[Deep](/frdocs/Data-insights/Features/Deep/Search/)
{ .card }

[Enterprise Dashboard](/frdocs/Data-insights/Features/Enterprise-Dashboard/Enterprise-Dashboard/)
{ .card }

[Explore](/frdocs/Data-insights/Features/explore/)
{ .card }

[Historic Data](/frdocs/Data-insights/Features/timepicker/)
{ .card }

[Incidents](/frdocs/Data-insights/Features/Incidents/incidents/)
{ .card }

[JDBC](/frdocs/Data-insights/Features/JDBC/Databases/)
{ .card }

[Logs](/frdocs/Data-insights/Features/Logs/Logs/)
{ .card }

[Memory](/frdocs/Data-insights/Features/Memory/Overview/)
{ .card }

[Metrics](/frdocs/Data-insights/Features/Metrics/Metrics-Page/)
{ .card }

[OpsPilot](/frdocs/Data-insights/Features/OpsPilot/AIoverview/)
{ .card }

[Profiler](/frdocs/Data-insights/Features/Profiler/Profiler/)
{ .card }

[Requests](/frdocs/Data-insights/Features/Requests/Applications/)
{ .card }

[Resources](/frdocs/Data-insights/Features/Resources/Buffer-Pool/)
{ .card }


[Servers](/frdocs/Data-insights/Features/servers/)
{ .card }

[Settings](/frdocs/Data-insights/Features/Settings/CPU-Sampler/)
{ .card }

[System Resouces](/frdocs/Data-insights/Features/System-Resources/CPU/)
{ .card }

[Transactions](/frdocs/Data-insights/Features/Transactions/Activity/)
{ .card }

[UEM Sessions](/frdocs/Data-insights/Features/UEM/Sessions/)
{ .card }

</div>



### ADMIN & DATA

<div class="grid" markdown>

[Account & user management](/frdocs/Admin-and-data/Account/Cloud/users/)
{ .card }

[Billing](/frdocs/Admin-and-data/Billing/Cloud/overview/)
{ .card }


[Data limits](/frdocs/Admin-and-data/Limits/)
{ .card }

[Licensing](/frdocs/Admin-and-data/Licensing/Licensing/)
{ .card }


[Security](/frdocs/Admin-and-data/security/)
{ .card }

[Terms of Service](/frdocs/Admin-and-data/tos/)
{ .card }

[Third party licenses](/frdocs/Admin-and-data/Third-Party-Licenses/licenses/)
{ .card }


</div>
