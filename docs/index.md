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
        /* Force light mode - disable dark mode on this page */
        :root {
            --card-bg: white !important;
            --card-text: #333 !important;
            --md-color-scheme-hover-bg: #f9f9f9 !important;
        }
        
        body {
            background-color: white !important;
            color: #333 !important;
        }
        
        /* Disable any dark mode classes */
        body.dark-mode,
        body[data-theme="dark"],
        html[data-theme="dark"] {
            background-color: white !important;
            color: #333 !important;
        }

        /* Your existing styles below */
        .fr-journey-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 40px 20px;
            font-family: Roboto
        .fr-journey-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 40px 20px;
            font-family: Roboto
        }

        .fr-journey-title {
            text-align: center;
            color: black;
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
            background: white;
            border-radius: 10px;
            border: 2px solid rgba(198, 203, 206, 0.49);
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
            background: #53AFDA;
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
            font-size: 1.1rem;
            color: black;
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
            background-color: white; /* Match the card background */
            color: #343942; /* Light blue text color */
            text-decoration: none;
            border: 2px solid white; /* Light blue border */
            border-radius: 5px;
            font-size: 0.7rem;
            font-weight: bold; /* Makes the text bold */
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
                font-size: 2rem;
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
                <div class="fr-step-title"> Create your account</div>
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
                    <a href="/Getting-started/install-fr/" class="fr-btn">Install FusionReactor</a>
                </div>
            </div>
            <div class="fr-step">
                <div class="fr-step-number">3</div>
                <div class="fr-step-title">Set up integrations</div>
                <div class="fr-step-description">Monitor key parts of your infrastructure like databases, Docker etc.</div>
                <div class="fr-step-action">
                    <a href="/Getting-started/set-up-integrations/" class="fr-btn">Install Observability Agent</a>
                </div>
            </div>
            <div class="fr-step">
                <div class="fr-step-number">4</div>
                <div class="fr-step-title">Start your FR journey</div>
                <div class="fr-step-description">Familiarize yourself with our comprehensive monitoring platform.</div>
                <div class="fr-step-action">
                    <a href="/Getting-started/intro-to-fr/" class="fr-btn">Learn more about FR</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>


<style>
.doc-grid-item-link:hover * {
  color: #53AFDA !important; /* Use !important to override inline styles */
}
.doc-grid-item-link:hover div {
  /* Optionally, keep the background color change if you like it */
  background-color: var(--md-color-scheme-hover-bg, #f9f9f9) !important; /* Example fallback */
  color: #fff !important; /* Keep the white text on hover if desired */
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
  transform: translateY(-4px);
}
.doc-grid-item-link:not(:hover) div {
  /* Revert background and text color on mouseout */
  background-color: var(--card-bg, white);
  color: var(--card-text, #333);
  box-shadow: none;
  transform: none;
}
</style>

<h3 style="margin-bottom: 20px;">POPULAR DOCS</h3>

<div style="display: flex; flex-wrap: wrap; gap: 20px;">

  <a href="/Data-insights/Features/Anomaly-Detection/ADoverview/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Anomaly Detection</h4>
      <p style="font-size: 0.85em;">Identify anomalies with precision.</p>
    </div>
  </a>

  <a href="/Getting-started/Tutorials/troubleshoot-crash/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-plug fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Troubleshooting</h4>
      <p style="font-size: 0.85em;">Post crash troubleshooting with FR.</p>
    </div>
  </a>

   <a href="/Data-insights/Features/Incidents/incidents/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Incidents</h4>
      <p style="font-size: 0.85em;">Track & resolve incidents in real-time.</p>
    </div>
  </a>

   <a href="/Getting-started/Tutorials/know-the-ui/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Get to know the UI</h4>
      <p style="font-size: 0.85em;">Familiarize yourself with the UI.</p>
    </div>
  </a>

  </div>

<h3 style="margin-bottom: 20px;">LATEST NEWS</h3>

<div style="display: flex; flex-wrap: wrap; gap: 20px;">

  <a href="/Latest-updates/WhatsNew/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">What's New</h4>
      <p style="font-size: 0.85em;">Discover exciting updates & features.</p>
    </div>
  </a>

  <a href="/Latest-updates/Releases" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-plug fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Releases</h4>
      <p style="font-size: 0.85em;">Explore our latest releases & updates.</p>
    </div>
  </a>

  </div>

<style>
.doc-grid-item-link:hover * {
  color: #53AFDA !important; /* Use !important to override inline styles */
}
.doc-grid-item-link:hover div {
  /* Optionally, keep the background color change if you like it */
  background-color: var(--md-color-scheme-hover-bg, #f9f9f9) !important; /* Example fallback */
  color: #fff !important; /* Keep the white text on hover if desired */
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
  transform: translateY(-4px);
}
.doc-grid-item-link:not(:hover) div {
  /* Revert background and text color on mouseout */
  background-color: var(--card-bg, white);
  color: var(--card-text, #333);
  box-shadow: none;
  transform: none;
}
</style>

<h3 style="margin-bottom: 20px;">INSTALLATION GUIDES</h3>

<div style="display: flex; flex-wrap: wrap; gap: 20px;">

  <a href="/Best-Practices/Installation/installation-overview/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Best Practices</h4>
      <p style="font-size: 0.85em;">Explores the optimal setup for your environment - local server, scripted, or Docker.</p>
    </div>
  </a>

  <a href="/Monitor-your-data/FR-Agent/agent-overview/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-plug fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">FusionReactor Agent</h4>
      <p style="font-size: 0.85em;">Monitor Java & CF apps for real-time and historical insights into transactions, memory, etc.</p>
    </div>
  </a>

   <a href="/Monitor-your-data/Observability-agent/overview/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Observability Agent</h4>
      <p style="font-size: 0.85em;">Monitor infrastructure components like databases, Kafka, Docker, system metrics, and more.</p>
    </div>
  </a>

   <a href="/Monitor-your-data/OpenTelemetry/getting-started/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">OpenTelemetry</h4>
      <p style="font-size: 0.85em;">Monitor app performance with OTel, an open-source framework for collecting and exporting telemetry data.</p>
    </div>
  </a>

  
  <a href="/Monitor-your-data/Kubernetes-monitoring/overview/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Kubernetes</h4>
      <p style="font-size: 0.85em;">Monitor K8s clusters by tracking pod health, performance, resource usage, scaling, and real-time observability.</p>
    </div>
  </a>

  <a href="/Monitor-your-data/Log-monitoring/overview/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-plug fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Log Monitoring</h4>
      <p style="font-size: 0.85em;">Monitor logs alongside FusionReactor data for unified observability and deeper insights.</p>
    </div>
  </a>

   <a href="/Monitor-your-data/Deep/overview/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Deep</h4>
      <p style="font-size: 0.85em;">FusionReactor integrates with Deep, a dynamic tool that enhances real-time observability & collects application data.</p>
    </div>
  </a>

 </div>

<style>
.doc-grid-item-link:hover * {
  color: #53AFDA !important; /* Use !important to override inline styles */
}
.doc-grid-item-link:hover div {
  /* Optionally, keep the background color change if you like it */
  background-color: var(--md-color-scheme-hover-bg, #f9f9f9) !important; /* Example fallback */
  color: #fff !important; /* Keep the white text on hover if desired */
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
  transform: translateY(-4px);
}
.doc-grid-item-link:not(:hover) div {
  /* Revert background and text color on mouseout */
  background-color: var(--card-bg, white);
  color: var(--card-text, #333);
  box-shadow: none;
  transform: none;
}
</style>

<h3 style="margin-bottom: 20px;">FEATURES</h3>

<div style="display: flex; flex-wrap: wrap; gap: 20px;">

  <a href="/Data-insights/Features/alerting/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Alerting</h4>
      <p style="font-size: 0.85em;">Get notifications for performance issues.</p>
    </div>
  </a>

  <a href="/Data-insights/Features/Anomaly-Detection/ADoverview/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-plug fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Anomaly Detection</h4>
      <p style="font-size: 0.85em;">Detect unusual application behavior.</p>
    </div>
  </a>

   <a href="/Data-insights/Features/applications/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Applications</h4>
      <p style="font-size: 0.85em;">Overview of your monitored Java apps.</p>
    </div>
  </a>

   <a href="/Data-insights/Features/CPU-Sampler/CPU-Sampler/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">CPU Sampler</h4>
      <p style="font-size: 0.85em;">Profile code-level CPU usage.</p>
    </div>
  </a>

  
  <a href="/Data-insights/Features/Crash-protection/Crash-Protection/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Crash Potection</h4>
      <p style="font-size: 0.85em;">Monitor server issues & prevent crashes.</p>
    </div>
  </a>

  <a href="/Data-insights/Features/dashboards/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-plug fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Dashboards</h4>
      <p style="font-size: 0.85em;">Visualize key performance data.</p>
    </div>
  </a>

   <a href="/Data-insights/Features/Debugger/Overview/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Debugger</h4>
      <p style="font-size: 0.85em;">Debug code directly in production.</p>
    </div>
  </a>

  <a href="/Monitor-your-data/Deep/overview/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Deep</h4>
      <p style="font-size: 0.85em;">Dynamically monitor your applications</p>
    </div>
  </a>

   <a href="/Data-insights/Features/Enterprise-Dashboard/Enterprise-Dashboard/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
     <div style="
        border: 1px solid #ccc;
        padding: 12px;
        box-sizing: border-box;
        text-align: center;
        border-radius: 8px;
        transition: all 0.3s ease;
        cursor: pointer;
        background-color: var(--card-bg, white);
        color: var(--card-text, #333);
        ">
        <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
        <h4 style="margin: 10px 0 6px;">Enterprize Dashboard</h4>
        <p style="font-size: 0.85em;">Central view for multiple FR instances.</p>
        </div>
  </a>

  <a href="/Data-insights/Features/explore/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-plug fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Explore</h4>
      <p style="font-size: 0.85em;"> Analyse your performance data.</p>
    </div>
  </a>

   <a href="/Data-insights/Features/timepicker/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Historic data</h4>
      <p style="font-size: 0.85em;">Analyze past application performance.</p>
    </div>
  </a>

   <a href="/Data-insights/Features/Incidents/incidents/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Incidents</h4>
      <p style="font-size: 0.85em;">Track & manage performance issues.</p>
    </div>
  </a>

  
  <a href="/Data-insights/Features/JDBC/Databases/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">JDBC</h4>
      <p style="font-size: 0.85em;">Monitor Java database interactions.</p>
    </div>
  </a>

  <a href="/Data-insights/Features/Logs/Logs/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-plug fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Logs</h4>
      <p style="font-size: 0.85em;">Aggregate & search application logs.</p>
    </div>
  </a>

   <a href="/Data-insights/Features/Memory/Overview/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Memory</h4>
      <p style="font-size: 0.85em;">Track JVM memory usage.</p>
    </div>
  </a>

  <a href="/Data-insights/Features/OpsPilot/AIoverview/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">OpsPilot</h4>
      <p style="font-size: 0.85em;">Troubleshoot with AI insights.</p>
    </div>
  </a>

  <a href="/Data-insights/Features/Profiler/Profiler/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-plug fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Profiler</h4>
      <p style="font-size: 0.85em;">Detailed code performance analysis.</p>
    </div>
  </a>

   <a href="/Data-insights/Features/Requests/Applications/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Requests</h4>
      <p style="font-size: 0.85em;">Analyze individual web requests.</p>
    </div>
  </a>

   <a href="/Data-insights/Features/Resources/Buffer-Pool/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Resources</h4>
      <p style="font-size: 0.85em;">Monitor system CPU, memory, etc.</p>
    </div>
  </a>

  
  <a href="/Data-insights/Features/servers/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Servers</h4>
      <p style="font-size: 0.85em;">Monitor your app server instances.</p>
    </div>
  </a>

  <a href="/Data-insights/Features/Settings/CPU-Sampler/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-plug fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">Settings</h4>
      <p style="font-size: 0.85em;">Configure FusionReactor options.</p>
    </div>
  </a>

   <a href="/Data-insights/Features/System-Resources/CPU/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">System Resources</h4>
      <p style="font-size: 0.85em;">Monitoring operating system resources.</p>
    </div>
  </a>

   <a href="/Data-insights/Features/Transactions/Activity/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
     <div style="
        border: 1px solid #ccc;
        padding: 12px;
        box-sizing: border-box;
        text-align: center;
        border-radius: 8px;
        transition: all 0.3s ease;
        cursor: pointer;
        background-color: var(--card-bg, white);
        color: var(--card-text, #333);
        ">
        <i class="fas fa-server fa-2x" style="margin-bottom: 10px; color: purple;"></i>
        <h4 style="margin: 10px 0 6px;">Transactions</h4>
        <p style="font-size: 0.85em;">Analyze individual app transactions.</p>
        </div>
  </a>

  <a href="/Data-insights/Features/UEM/Sessions/" style="text-decoration: none; color: inherit; width: calc(25% - 20px);" class="doc-grid-item-link">
    <div style="
      border: 1px solid #ccc;
      padding: 12px;
      box-sizing: border-box;
      text-align: center;
      border-radius: 8px;
      transition: all 0.3s ease;
      cursor: pointer;
      background-color: var(--card-bg, white);
      color: var(--card-text, #333);
    ">
      <i class="fas fa-plug fa-2x" style="margin-bottom: 10px; color: purple;"></i>
      <h4 style="margin: 10px 0 6px;">UEM Sessions</h4>
      <p style="font-size: 0.85em;">Monitor the experience of your users.</p>
    </div>
  </a>

  </div>



