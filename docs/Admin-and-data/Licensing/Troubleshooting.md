title: Troubleshooting

# Troubleshooting License Connection Issues

In FusionReactor 8 we introduced a new licensing server that offers better support for dynamic environments and increased
 stability.

 An instance of FusionReactor will interact with the licensing server as described below:

* FusionReactor instances contact the licensing server every minute
* The licensing server cannot disable an instance to stop it from pinging
​* Servers will go to an offline state after 2 minutes of not contacting the licensing server
* If a FusionReactor instance is running it will try to ping every minute regardless of whether the response from the licensing
 server allows it to activate.
 * The only way to stop an instance from attempting to activate to click deactivate on the about page.

FusionReactor will automatically attempt to activate on startup, if your server is able to contact our license server and
 receive a response then you should not have any problems.

If however, we are not able to contact the license server or receive a valid response you will see a banner in FusionReactor.

There are 3 alternative approaches to activate FusionReactor:

1. Configuring a proxy
1. Setting a firewall rule to allow contact to the licensing server
1. Performing a manual activation

## Configuring a proxy

If you require a proxy to connect to external sites you can configure FusionReactor to use this proxy, this will route all FusionReactor traffic to the licensing server through your proxy and activate automatically.

To configure your proxy you can click on proxy settings on the about page of FusionReactor, in the menu you can configure your proxy location and choose from basic, digest, NTLM or no authentication:

When you have configured your proxy you can click test proxy to ensure a connection to our licensing server can be made. If the connection is successful you will now be able to activate FusionReactor.

## Setting a firewall rule

If you are running FusionReactor in a locked down environment where your firewall is restricting access to certain external sites you can configure a firewall punch to allow FusionReactor to contact its licensing server.

The punch can be done either by allowing connections to the hostname of the server or by allowing connections to a static IP address for the licensing server.

If you are using the IP address in a firewall rule you will also need to set system properties in your application server to point FusionReactor to an alternate licensing server with the static IP address configured.

For information on the firewall rules required and instructions on how to configure the application server see [FusionReactor
 Firewall DNS and Static IP address rules](Static-Licensing-Endpoints.md).

## Performing a manual activation

If your server is locked down and has no way of contacting external sites you will need to perform a manual activation. This involves taking an activation code from your server and applying this code on the FusionReactor portal via a machine that has access to our licensing server.

This is typically a more time-consuming process than relying on automatic activations, you are also required to perform this manual process each time you upgrade FusionReactor or renew your license as there is no way to retrieve the updated information from our licensing server.

For more information on manually activating FusionReactor see: [Manually activating FusionReactor](Manual-Activation.md)
