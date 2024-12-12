---
hide:
  - navigation
  - toc
---

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

[Anomaly Detection](#)
{ .card }

[OpsPilot Hub](/frdocs/Data-insights/Features/OpsPilot/OpsPilot-Hub/overview/)
{ .card }
</div>

### MONITOR YOUR DATA

<div class="grid cards" markdown>

</div>


<div class="grid cards" markdown>

-   __Best Practices__


    ---


    Best setup for your environment


    [:octicons-arrow-right-24: Learn more](/frdocs/Best-Practices/Installation/installation-overview/)


-   __FusionReactor Agent__


    ---
    Monitor Java and CFML




    [:octicons-arrow-right-24: Learn more](/frdocs/Monitor-your-data/FR-Agent/agent-overview/)


-    __Observability Agent__


    ---


    Monitor your databases


    [:octicons-arrow-right-24: Learn more](/frdocs/Monitor-your-data/Observability-agent/overview/)


-    __OpenTelemetry__


    ---


    Monitor telemetry data


    [:octicons-arrow-right-24: Learn more](/frdocs/Monitor-your-data/OpenTelemetry/getting-started/)


-   __Kubernetes__


    ---


    Monitor your clusters


    [:octicons-arrow-right-24: Learn more](#)


-   __Log Monitoring__


    ---


    Monitor your logs


    [:octicons-arrow-right-24: Learn more](#)

</div>


### DATA INSIGHTS

<div class="grid" markdown>

[Alerting](#)
{ .card }

[Anomaly Detection](#)
{ .card }

[Applications](#)
{ .card }

[Crash Protection](#)
{ .card }

[Dashboards](#)
{ .card }

[Debugger](#)
{ .card }

[Deep](#)
{ .card }

[Enterprise Dashboard](#)
{ .card }

[Explore](#)
{ .card }

[Historic Data](#)
{ .card }

[JDBC](#)
{ .card }

[On-Prem UI](#)
{ .card }

[OpsPilot](#)
{ .card }

[Profiler](#)
{ .card }

[Servers](#)
{ .card }


</div>



### LATEST UPDATES

<div class="grid" markdown>

[What's New](#)
{ .card }

[Releases](#)
{ .card }


</div>

### ADMIN & DATA

<div class="grid" markdown>

[Account & user management](#)
{ .card }

[Security](#)
{ .card }

[Data](#)
{ .card }

[Licenses](#)
{ .card }

</div>
