---
hide:
  - navigation
  - toc
---

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
            <div class="fr-step-title">Start your FR journey</div>
            <div class="fr-step-description">Familiarize yourself with our comprehensive monitoring platform.</div>
            <div class="fr-step-action">
                <a href="/frdocs/Getting-started/intro-to-fr/" class="fr-btn">Get started</a>
            </div>
        </div>
        <div class="fr-step">
            <div class="fr-step-number">3</div>
            <div class="fr-step-title">Install FusionReactor</div>
            <div class="fr-step-description">Dive into the UI and configure FusionReactor to monitor your stack.</div>
            <div class="fr-step-action">
                <a href="/frdocs/Getting-started/install-fr/" class="fr-btn">Install FR</a>
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

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FusionReactor Tiles</title>
    <style>
        .fr-tiles-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .fr-tiles-title {
            font-size: 28px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }
        .fr-tiles {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px;
        }
        .fr-tile {
            flex-basis: calc(25% - 15px);
            background-color: #f5f5f5;
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            transition: all 0.3s ease;
        }
        .fr-tile:hover {
            background-color: #e0e0e0;
            transform: translateY(-5px);
        }
        .fr-tile-link {
            text-decoration: none;
            color: #333;
            font-weight: bold;
            font-size: 18px;
        }
        .fr-tile-subheading {
            font-size: 14px;
            color: #666;
            margin-top: 10px;
        }
        @media (max-width: 768px) {
            .fr-tile {
                flex-basis: calc(50% - 10px);
            }
        }
        @media (max-width: 480px) {
            .fr-tile {
                flex-basis: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="fr-tiles-container">
        <h1 class="fr-tiles-title">Popular docs</h1>
        <div class="fr-tiles">
            <div class="fr-tile">
                <a href="#" class="fr-tile-link">Get to know the UI</a>
            </div>
            <div class="fr-tile">
                <a href="#" class="fr-tile-link">Create a dashboard</a>
            </div>
            <div class="fr-tile">
                <a href="#" class="fr-tile-link">OpsPilot</a>
            </div>
            <div class="fr-tile">
                <a href="#" class="fr-tile-link">Anomaly Detection</a>
            </div>
        </div>
    </div>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FusionReactor Tiles</title>
    <style>
        .fr-tiles-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .fr-tiles-title {
            font-size: 28px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }
        .fr-tiles {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px;
        }
        .fr-tile {
            flex-basis: calc(25% - 15px);
            background-color: #f5f5f5;
            border-radius: 8px;
            padding: 20px;
            text-align: center;
            transition: all 0.3s ease;
        }
        .fr-tile:hover {
            background-color: #e0e0e0;
            transform: translateY(-5px);
        }
        .fr-tile-link {
            text-decoration: none;
            color: #333;
            font-weight: bold;
            font-size: 18px;
        }
        .fr-tile-subheading {
            font-size: 14px;
            color: #666;
            margin-top: 10px;
        }
        @media (max-width: 768px) {
            .fr-tile {
                flex-basis: calc(50% - 10px);
            }
        }
        @media (max-width: 480px) {
            .fr-tile {
                flex-basis: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="fr-tiles-container">
        <h1 class="fr-tiles-title">Monitor your data</h1>
        <div class="fr-tiles">
            <div class="fr-tile">
                <a href="/Monitor-your-data/FR-Agent/agent-overview/" class="fr-tile-link">FusionReactor Agent</a>
                <p class="fr-tile-subheading">Monitor Java and CFML</p>
            </div>
            <div class="fr-tile">
                <a href="#" class="fr-tile-link">Observability Agent</a>
                <p class="fr-tile-subheading">Monitor your databases</p>
            </div>
            <div class="fr-tile">
                <a href="#" class="fr-tile-link">OpenTelemetry</a>
                <p class="fr-tile-subheading">Monitor telemetry data</p>
            </div>
            <div class="fr-tile">
                <a href="#" class="fr-tile-link">Kubernetes Monitoring</a>
                <p class="fr-tile-subheading">Monitor your clusters</p>
            </div>
            <div class="fr-tile">
                <a href="#" class="fr-tile-link">Dynamic Monitoring</a>
                <p class="fr-tile-subheading">Gather application data</p>
            </div>
            <div class="fr-tile">
                <a href="#" class="fr-tile-link">Database Monitoring</a>
                <p class="fr-tile-subheading">Monitor database performance</p>
            </div>
            <div class="fr-tile">
                <a href="#" class="fr-tile-link">Application Performance</a>
                <p class="fr-tile-subheading">Monitor app performance</p>
            </div>
            <div class="fr-tile">
                <a href="#" class="fr-tile-link">Log Monitoring</a>
                <p class="fr-tile-subheading">Analyze application logs</p>
            </div>
        </div>
    </div>
</body>
</html>



