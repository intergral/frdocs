#  Java/Lucee & databases 


![!Screenshot](/frdocs-oss/frdocs/Best-Practices/Installation/Images/Docker1.png)

## Step 1: Add FusionReactor to your image


### a) Create a FusionReactor directory

```
RUN mkdir -p /opt/fusionreactor/instance/{name}`
```

### b) Add the FusionReactor files to the instance directory

!!! note 
    Ensure that you always use the latest version of FusionReactor.

```
ADD https://download.fusionreactor.io/FR/Latest/fusionreactor.jar /opt/fusionreactor/instance/{name}
```

```
ADD https://download.fusionreactor.io/FR/Latest/libfrjvmti_x64.so /opt/fusionreactor/instance/{name}
```

### c) Add FusionReactor to the JVM arguments 

!!! info 
    App servers may use different methods to do this and we advise reading their Docker Hub or consulting our [repository](https://github.com/intergral/fusionreactor-docker) for some examples.

```
ENV JAVA_OPTS="-javaagent:/opt/fusionreactor/instance/{name}/fusionreactor.jar=name=name,address=8088 -agentpath:/opt/fusionreactor/instance/{name}/libfrjvmti_x64.so"
```


<iframe src="https://player.vimeo.com/video/465103334?h=312df4be2c" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
<p><a href="https://vimeo.com/465103334">Installing FusionReactor in Docker - Java Example</a> from <a href="https://vimeo.com/user109619720">FusionReactor APM</a> on <a href="https://vimeo.com">Vimeo</a>.</p>

### Full working example: Tomcat

```
FROM tomcat
ADD myApp.war /usr/local/tomcat/webapps

#Creates a FusionReactor Directory
RUN mkdir -p /opt/fusionreactor/instance/tomcat

#Adds the fusionreactor.jar file to the instance directory
ADD https://download.fusionreactor.io/FR/Latest/fusionreactor.jar /opt/fusionreactor/instance/tomcat

#Add the debug library file to the instance directory
ADD https://download.fusionreactor.io/FR/Latest/libfrjvmti_x64.so /opt/fusionreactor/instance/tomcat

#Add FusionReactor to the JVM arguments
ENV JAVA_OPTS="-javaagent:/opt/fusionreactor/instance/tomcat/fusionreactor.jar=name=tomcat,address=8088 -agentpath:/opt/fusionreactor/instance/tomcat/libfrjvmti_x64.so"
```

## Step 2: Run the Observability Agent

The Observability Agent provides you with the necessary tools and insights to effectively monitor, manage, and optimize your applications, leading to improved reliability, performance, and user experience.

### Run via Docker

Run the following command, replacing **YOUR_API_KEY** with your actual [API key](/frdocs-oss/frdocs/Cloud/logs/Log-Shipper/#generating-api-keys) and adjusting the environment variables as needed: 

```
docker run --env api_key=YOUR_API_KEY --env ENV_VARIABLE=VALUE --env mysql_connection_string=root:my-secret-pw@(mysql:3306)/ intergral/observability-agent:latest
```



!!! info
    Docker automatically pulls the latest version of the Observability Agent image from the [Dockerhub](intergral/observability-agent - Docker Image | Docker Hub) repository.


<iframe src="https://player.vimeo.com/video/827268952?h=0f2c0e8fad" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
<p><a href="https://vimeo.com/827268952">FusionReactor Observability agent Docker installation</a> from <a href="https://vimeo.com/user109619720">FusionReactor APM</a> on <a href="https://vimeo.com">Vimeo</a>.</p>


!!! info "Learn more"
    [Log collection, OTEL and other databases](/frdocs-oss/frdocs/Cloud/Observability-Agent-Install/Configuration/) can be enabled by setting the appropriate environment variables.




### Run via Docker Compose
      
```
version: "3.2"


services:


  #database
  mysql:
    image: mysql:latest
    ports:
      - "3306:3306"
    environment:
      - MYSQL_ROOT_PASSWORD=my-secret-pw
  
  #agent
  agent:
    image: intergral/observability-agent:latest
    environment:
      - api_key=1234567890
      - mysql_connection_string=root:my-secret-pw@(mysql:3306)/
    ports:
      - 12345:12345
```

!!! info "Learn more"
    [Log collection, OTEL and other databases](/Cloud/Observability-Agent-Install/Configuration/) can be enabled by setting the appropriate environment variables.

___
    
!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.