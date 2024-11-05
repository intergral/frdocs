# Java/Lucee, databases & other languages


![!Screenshot](/Best-Practices/Installation/Images/JLOTel.png)

## Step 1: Install FRAM (FusionReactor Administration Manager)

Install FRAM on your machine and then navigate to port 8087 to open the FRAM in your browser.

| Full installer | 
|  :---:  |
| [Windows](https://download.fusionreactor.io/FR/Latest/FusionReactor_windows-x64.exe) |
| [Linux](https://download.fusionreactor.io/FR/Latest/FusionReactor_linux-x64.sh)  |
| [MacOS](https://download.fusionreactor.io/FR/Latest/FusionReactor_macos.dmg) | <br>

<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/930599280?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="Quick and Easy Installation of FusionReactor Administration Manager (FRAM) on Windows"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>
<br>

## Step 2: Install FusionReactor in Java or Lucee using FRAM

!!! note
    Each instance of Java or Lucee requires one FusionReactor installed.

Use the auto discovery tool to scan your server and automatically locate your Java or Lucee instances. Once FusionReactor is installed on each instance, data will be sent to the cloud automatically provided you have a Cloud Licence Key. 

 <div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/928407289?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="How to install a FusionReactor instance using FRAM"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

!!! info
    If the auto discovery tool doesn't pick up the instance you can then specify the file path to find it yourself.


!!! tip 
    This is a manual process so if you have over 100 servers,  we recommend manual  activation or [scripting](/Cloud/Best-Practices/scripted1/) to install FR. to install FR.
<br>

## Step 3: Install the Observability Agent using FRAM

!!! note
    The OpenTelemetry collector must be enabled when installing the Observability Agent via FRAM.


To monitor the machine running Lucee or Java itself and any databases eg Redis, you need to use FRAM to install the Observability Agent. You can specify any external database or any database on the machine, it will support either and will automatically monitor the machine it is running on.  


<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/928407325?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="How to install the Observability Agent using FRAM"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

!!! info 
    Log collection can also be enabled in the Observability Agent to collect logs from your application using a wildcard path. 


!!! info "Learn more"
    [Observability Agent](/Cloud/integrations/Metric-Integrations/)

## Step 4: Instrument OpenTelemetry

Instrument your code to support OpenTelemetry on your application (Node.js, Python, Go etc).

!!! info "Learn more"
    [OpenTelemetry](https://opentelemetry.io/docs/what-is-opentelemetry/)


Configure the endpoint of the OTel application to the Observability Agent at either http://localhost:4317 or http://localhost:4318  of your machine (depending on whether you're using gRPC or HTTP). This ships telemetry data to the Observability Agent, which does the cloud shipping for you.



!!! note
    It is possible to use a dedicated OTel collector or alternative if required, but the Observability Agent is the simplest method for shipping telemetry data.






