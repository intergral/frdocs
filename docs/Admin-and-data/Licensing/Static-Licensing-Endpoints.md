title: Static Endpoints

# Static Licensing Endpoints

Some users run FusionReactor behind restricted firewalls which do not allow all outbound connections. In this case, these users may need to add specific firewall rules to allow FusionReactor to communicate with FusionReactor Cloud.

## Using DNS Firewall Rules

In order to communicate with the FusionReactor infrastructure, each FusionReactor instance attempts to connect to the following services, which are identified by their DNS names:

* wss://cc.fusionreactor.io – port tcp/2804
* https://api.fusionreactor.io – port tcp/443

These services require outgoing firewall rules for FusionReactor to communicate with FusionReactor Cloud. All communications are protected by SSL cyphers.

If possible, the firewall should be configured with the DNS names of these services, since they can change in response to scaling events.

If the IP addresses are required, nslookup can be used to find their current values. Most services will yield two addresses: both must be added.
Using Static IP Addresses

If you are unable or unwilling to use the dynamic DNS rules above, we have provided a static IP addresses which can be used for all services.

* 52.214.198.96 – port tcp/443 and port tcp/2804

After enabling this firewall rule, the following -D options need to be applied to your JVM environment, to instruct FusionReactor to use the single address:

```
-Dfr.gcs.client.endpoint=wss://cc-static.fusionreactor.io:2804/
-Dfr.cloud.endpoint=https://api-static.fusionreactor.io
```

##Locked-Down Environments

If you are using a non-standard Java security policy, you may have to add rules to it to allow FusionReactor to connect to these services. The form of these rules is:

```
permission java.net.SocketPermission “cc-static.fusionreactor.io:2804”, "connect, accept, resolve”;
permission java.net.SocketPermission “api-static.fusionreactor.io:443”, "connect, accept, resolve”;
```
