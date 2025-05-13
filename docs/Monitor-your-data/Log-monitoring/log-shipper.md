# Log Shippers

Using the **FusionReactor** agent, you can send additional logs hosted on your servers themselves with only minor configuration.

However, there are some drawbacks to this approach:

- Sending logs using a process running within your application can reduce performance if there is a high volume of logs.

- Scraping logs does not allow you to apply custom labels to logs.

- To get the most value out of logging you also want to send logs from alternate servers.

Alternative sources could be:

- Application server logs (eg ColdFusion, Tomcat, Lucee)

- Nginx logs

- Database logs

- IIS logs

- Proxies

- Docker logs



## Sending logs

Use a logging client such as [Promtail](https://grafana.com/docs/loki/latest/clients/promtail/), [fluent Bit](https://fluentbit.io/), [LOGBack](https://logback.qos.ch/), [Fluentd](https://www.fluentd.org/) or some other alternative.


![alt](/Monitor-your-data/Log-monitoring/images/promtail.png) ![alt](/Monitor-your-data/Log-monitoring/images/fluentbit.png) ![alt](/Monitor-your-data/Log-monitoring/images/logback.png) ![alt](/Monitor-your-data/Log-monitoring/images/fluentd.png)


Send logs directly to **FusionReactor Cloud** by configuring the log destinations with the following URL,  ````https://api.fusionreactor.io/logs/v1/```` using basic authentication of **username** / **password**.

* **Username** = FusionReactor Cloud login email.

* **Password** = API key.

### Generating API keys
To generate an API key, go to your account settings page in **FusionReactor Cloud** [Account settings](https://app.fusionreactor.io/account/settings). 

Under the API keys tab, click generate and create a key.

![](/Monitor-your-data/Log-monitoring/images/apiKeys.png)

### Sending logs to FR Cloud

<iframe src="https://player.vimeo.com/video/822999363?h=0b350ab4ef" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
<p><a href="https://vimeo.com/822999363">Sending Logs to FusionReactor Cloud</a> from <a href="https://vimeo.com/user109619720">FusionReactorAPM</a> on <a href="https://vimeo.com">Vimeo</a>.</p>

### Sending logs to FR Cloud via Docker

<iframe src="https://player.vimeo.com/video/822996563?h=1ecb2a5ef8" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe>
<p><a href="https://vimeo.com/822996563">Sending logs to FusionReactor Cloud using Docker</a> from <a href="https://vimeo.com/user109619720">FusionReactorAPM</a> on <a href="https://vimeo.com">Vimeo</a>.</p>

## Labelling your logs

As you will see in the examples below, all logs must have at least a job label.

Recommended labels:

- Job

- Host

- Filename (if applicable)

!!! info "Learn more"
    [Labels & fields](/Monitor-your-data/Log-monitoring/labels-and-fields/)

## Logging client examples

Below are examples of how to use [Promtail](https://grafana.com/docs/loki/latest/clients/promtail/), [fluentbit](https://fluentbit.io/) and [LOGBack](https://logback.qos.ch/) to scrape logs from a container. We have updated the clients configuration to authenticate against FusionReactor Cloud.

### Promtail

Use the [installation docs](https://grafana.com/docs/loki/latest/clients/promtail/installation/) to install Promtail.


!!! example "Example: promtail.yml"
    ````
        server:
        http_listen_port: 9080
        grpc_listen_port: 0
        
        positions:
        filename: /tmp/positions.yaml
        
        clients:
        - url: https://api.fusionreactor.io/logs/v1/
        basic`_auth:
        username: {user}
        password: {api key}
        
        scrape_configs:
        - job_name: nginx
        static_configs:
            - targets:
                - localhost
                labels:
                job: store-balancer
                host: localhost
                __path__: /var/log/nginx/*log
    ````

### Fluent Bit
Use the [install documentation](https://docs.fluentbit.io/manual) to install Fluent Bit.


!!! example "Example: fluent-bit.config"
    ````
        [INPUT]
            Name        fusionreactor-logs
            Path        /opt/coldfusion2018/cfusion/logs/coldfusion-out.log
            Tag         cfusionout
        
        [INPUT]
            Name        fusionreactor-logs
            Path        /opt/coldfusion2018/cfusion/logs/coldfusion-error.log
            Tag         cfusionerr
        
        [OUTPUT]
            Name fusionreactor-logs
            Match cfusionout
            Url https://FR:your-api-key-here@api.fusionreactor.io/logs/v1/
            Labels {job="service-name-here",instance="hostname",filename="coldfusion-out.log"}
            LogLevel info
        
        [OUTPUT]
            Name fusionreactor-logs
            Match cfusionerr
            Url https://FR:your-api-key-here@api.fusionreactor.io/logs/v1/
            Labels {job="service-name-here",instance="hostname",filename="coldfusion-error.log"}
            LogLevel info
    ````

### LOGBack

Use the [download page](http://logback.qos.ch/download.html) to add LOGBack to your application.


!!! example "Example: logback.xml"
    ````
        <configuration>   
            <appender name="FRCLOUD" class="com.github.loki4j.logback.Loki4jAppender">
                <http>
                    <url>https://api.fusionreactor.io/logs/v1/</url>
                    <auth>
                        <username>{user}</username>
                        <password>{api key}</password>
                    </auth>
                </http>
                <format>
                    <label>
                        <pattern>job=${applicationName}</pattern>
                    </label>
                    <message>
                        <pattern>${applicationName} ${node.host}: [%-5level] %logger %mdc - %msg</pattern>
                    </message>
                    <sortByTime>true</sortByTime>
                </format>
            </appender>
        
            <appender name="FRCLOUD_ASYNC" class="ch.qos.logback.classic.AsyncAppender">
                <queueSize>500</queueSize>
                <discardingThreshold>0</discardingThreshold>
                <appender-ref ref="FRCLOUD" />
            </appender>
        
            <root level="INFO">
                <appender-ref ref="FRCLOUD_ASYNC"/>
            </root>
        
            <logger name="ROOT" level="INFO"/>
            <logger name="com.intergral" level="INFO"/>
        
        </configuration>
    ````
!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.