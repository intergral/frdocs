

## FusionReactor Agent

The FusionReactor Agent monitors Java and ColdFusion. It provides real-time and historical data on web transactions, memory and CPU usage, database query performance, code details like memory and thread profiling, garbage collection data, automated error detection, and more.

Current version:  2025.1.0 - 3 March 2025

!!! info "Learn more" 
    [Release notes](/frdocs/Latest-updates/release-notes/) <br>
    [MD5](/frdocs/Monitor-your-data/FR-Agent/Installation/md5/)

 

=== "Automatic"
    Installing the FusionReactor Administration Manager using the automatic installer is a simple process that starts with the download page. <br>

    <div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/930599280?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="Quick and Easy Installation of FusionReactor Administration Manager (FRAM) on Windows"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script> 

    **Step 1**: Install FRAM


    | Full installer | 
    |  :---:  |
    | [Windows](https://download.fusionreactor.io/FR/Latest/FusionReactor_windows-x64.exe) |
    | [Linux](https://download.fusionreactor.io/FR/Latest/FusionReactor_linux-x64.sh)  |
    | [MacOS](https://download.fusionreactor.io/FR/Latest/FusionReactor_macos.dmg) | <br>

    !!! info "Learn more"
        [Automatic installer](/Installation/Installer/Install/)

    **Step 2**: Install a FusionReactor instance using FRAM <br>

    After successfully installing FRAM and activating your license key, the subsequent step involves installing FusionReactor onto a server.

     <div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/928407289?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="How to install a FusionReactor instance using FRAM"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

    **Step 3**: Install the Observabilty Agent (optional)

    FusionReactor has significantly simplified monitoring integrations beyond ColdFusion and Java With the inclusion of the Observability Agent in the FRAM installation package, accessing the installation option is conveniently available through your updated FRAM UI.   <br>

    !!! info "Learn more"
        [Observability Agent](/Cloud/Observability-Agent-Install/FRAM/)
    
    <br>
    


=== "Manual"
    Manually installing FusionReactor requires you to directly place the FusionReactor installation files and configure the JVM arguments on your application servers. 

    <div style="padding:55.83% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/465101100?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="FusionReactor Java APM - Manual Install for Tomcat on Windows Server 2016"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

    **Step 1**: Create a directory structure for FusionReactor
    
    **Step 2**: Download files into the directory structure

    [FusionReactor JAR](https://download.fusionreactor.io/FR/Latest/fusionreactor.jar)<br>
    [Debugger Native Library](https://download.fusionreactor.io/FR/Latest/debuglibs.zip)

    **Step 3**: Stop your application server

    **Step 4**: Add additional JVM arguments to your application server configuration <br>

    * Add a Java agent path (-javaagent argument) pointing to the fusionreactor.jar file.

    * The Debug native library path (-agentpath argument) needs to be pointing to the debug library.

     **Step 5**: Restart your application server


    !!! info "Learn more"
        [Manual installation](/Installation/Manual/Manual-Installation/)

=== "Docker"
    
    <div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/465103334?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="Installing FusionReactor in Docker - Java Example"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>
    
    **Step 1**: Start with your base image

    ```
    FROM {your image}
    ```
    **Step 2**: Create a FusionReactor directory in the `/opt` directory

    ```
    RUN mkdir -p /opt/fusionreactor/instance/{your instance name}
    ```
    **Step 3**: Add the `fusionreactor.jar` file to the FusionReactor instance directory

    ```
    ADD https://download.fusionreactor.io/FR/Latest/fusionreactor.jar /opt/fusionreactor/instance/{your instance name}

    ```

    **Step 4**: Add the debug library file (`libfrjvmti_x64.so`) to the FusionReactor instance directory

    ```
    ADD https://download.fusionreactor.io/FR/Latest/libfrjvmti_x64.so /opt/fusionreactor/instance/{your instance name}
    ```

    **Step 5**: Set the `JAVA_OPTS` environment variable to include FusionReactor in the JVM arguments

    ```
    ENV JAVA_OPTS="-javaagent:/opt/fusionreactor/instance/{your instance name}/fusionreactor.jar=name=tomcat,address=8088 -agentpath:/opt/fusionreactor/instance/{your instance name}/libfrjvmti_x64.so"
    ```
     **Step 6**: Build your Docker image

    Your Dockerfile should now be set up to create a Docker image with FusionReactor integrated into your chosen instance. Make sure to replace {your image} with the actual base image you intend to use and {your instance name} with your instance (eg. Tomcat) and look at our [fusionreactor-docker](https://github.com/intergral/fusionreactor-docker) GitHub repository for other example Dockerfiles.
   

    
    <br>

    !!! info "Learn more"
        [Install in Docker](/Installation/Docker/)


=== "CommandBox"

    To install FusionReactor in your CommandBox, we recommend using the [commandbox-fusionreactor module](https://www.forgebox.io/view/commandbox-fusionreactor). <br>

    
    <div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/465103258?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="Installing FusionReactor in CommandBox"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

    **Step 1**: Install the commandbox-fusionreactor module

    ```bash
    CommandBox> install commandbox-fusionreactor
    ```


    **Step 2**: Register your FusionReactor license

    ```bash
     CommandBox> fusionreactor register XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
    ```
    
    **Step 3 (optional)**: Use the following command to access the FusionReactor web admin
    
    ```bash
    CommandBox> fusionreactor open
    ```


    <br>


    <br>
    !!! info "Learn more"
        [Install in CommandBox](/Installation/CommandBox/)
 



### Legacy versions

It is possible to download previous versions of the FusionReactor Agent.


!!! info
    [Download legacy versions](/Installation/Download-Links/#downloading-legacy-versions)


## Observability Agent

The Observability Agent, an [open source](https://github.com/intergral/observability-agent/releases) autoconfiguration and installation tool, is a wrapper for the [Grafana Agent](https://github.com/grafana/agent) that can install the agent,
detect which services are running on your machine, and automatically create a configuration file with integrations for detected services.

!!! info 
    For a simple install that doesn't rely on scripts, the Observability Agent is available via [FRAM](/Cloud/Observability-Agent-Install/FRAM/)

### Install via FRAM

After you have installed or upgraded your FRAM version, you’ll find the Observability Agent installer on the FRAM summary screen. Click the **Install** button, then **Configure Install**, and here you can configure your integrations to start monitoring them with FusionReactor Cloud.

!!! note
    To install the Observability Agent via FRAM, you must have a minimum version of FusionReactor 12.


<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/928407325?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="How to install the Observability Agent using FRAM"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

### Local install using code snippets

=== "Linux" 

    **Step 1**: In a terminal, download and run the installer

    ````
    curl -O -L "https://github.com/intergral/observability-agent/releases/latest/download/observability-agent-autoconf.sh"
    chmod a+x "observability-agent-autoconf.sh"
    sudo /bin/bash observability-agent-autoconf.sh
    ````

    


=== "Windows"


    **Step 1** In a terminal, download and run the installer

    ````
    Invoke-WebRequest -Uri "https://github.com/intergral/observability-agent/releases/latest/download/observability-agent-autoconf.ps1" -OutFile "observability-agent-autoconf.ps1".\observability-agent-autoconf.ps1
    ````


### Docker

**Step 1**: Prepare the API key

Before running your application in Docker, obtain an [API key](/Cloud/integrations/Metric-Integrations/#step-1-generate-an-api-key) from the service or application you are working with. This API key is essential for authentication and configuration.

**Step 2**: Determine the environment variables

Determine which [environment variables](/frdocs/Monitor-your-data/Observability-agent/Configuration/) are required for your specific service or application. These environment variables are used to configure and customize the behavior of the service when running in Docker. 


**Step 3**: Run the Docker container

```
docker run --env api_key=<your_api_key> --env mysql_connection_string=root:my-secret-pw@(mysql:3306)/ intergral/observability-agent:latest
```

<iframe src="https://player.vimeo.com/video/827268952?h=0f2c0e8fad" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>


!!! info "Learn more"
    [Observability Agent ](/Cloud/integrations/Metric-Integrations/)
## Kubernetes

**Step 1**: Download files from our [GitHub repo](https://github.com/intergral/fr-cloud-kps)

 - `fr-cloud-kps-values.yaml`

 - `fr-cloud-kps-authentication-secret.yaml`

**Step 2**: Customize the two files for installation

- `fr-cloud-kps-values.yaml`

Change `CLUSTER_NAME` to your Kubernetes cluster name.

- `fr-cloud-authentication-secret.yaml`

Change `PASSWORD` to your FR Cloud API key. 

**Step 3**: Run the following commands to create a new namespace to hold & deploy stack 

``` bash
kubectl create namespace kube-prometheus-stack
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
kubectl apply -n kube-prometheus-stack -f fr-cloud-kps-authentication-secret.yaml
helm upgrade --install -n kube-prometheus-stack -f fr-cloud-kps-values.yaml kube-prometheus-stack prometheus-community/kube-prometheus-stack --version 52.0.1
```

!!! info "Learn more"
    [Shipping K8s to FR](/Cloud/platform-integrations/shippingK8stoFR/)

