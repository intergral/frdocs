title: Static Endpoints

# Static licensing endpoints

Some users run FusionReactor behind restricted firewalls which don't allow all outbound connections. In this case, these users may need to add specific firewall rules to allow FusionReactor to communicate with FusionReactor Cloud.

## Using DNS firewall rules

In order to communicate with the FusionReactor infrastructure, each FusionReactor instance attempts to connect to the following services, which are identified by their DNS names:

* wss://cc.fusionreactor.io – port tcp/2804
* https://api.fusionreactor.io – port tcp/443


### Firewall configuration requirements 

These services require outgoing firewall rules to allow FusionReactor to communicate with FusionReactor Cloud. All communications are protected by SSL encryption.  

If possible, configure the firewall with the DNS names of these services, as they may change due to scaling events.  

If IP addresses are required, use `nslookup` to find their current values. 

!!! note
    Most services will return two IP addresses; both must be added to the firewall rules.  



## Using static IP addresses

If you are unable or unwilling to use the dynamic DNS rules above, we've provided a static IP addresses which can be used for all services.

* 52.214.198.96 – port tcp/443 and port tcp/2804

After enabling this firewall rule, the following -D options need to be applied to your JVM environment, to instruct FusionReactor to use the single address:

```
-Dfr.gcs.client.endpoint=wss://cc-static.fusionreactor.io:2804/
-Dfr.cloud.endpoint=https://api-static.fusionreactor.io
```

## Locked-down environments

If you're using a non-standard Java security policy, you may need to add specific rules to allow FusionReactor to connect to these services.

The form of these rules is:

```
permission java.net.SocketPermission “cc-static.fusionreactor.io:2804”, "connect, accept, resolve”;
permission java.net.SocketPermission “api-static.fusionreactor.io:443”, "connect, accept, resolve”;
```
