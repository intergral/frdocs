title: Troubleshooting

# Troubleshooting license connection issues

In FusionReactor 8, we introduced a new licensing server for better support in dynamic environments and improved stability.

Here’s how FusionReactor interacts with the licensing server:

- FusionReactor instances check the licensing server every minute.
- The licensing server cannot disable an instance from pinging.
- Servers enter an offline state after two minutes of failing to contact the licensing server.
- If an instance is running, it will continue to ping every minute, regardless of the licensing server’s response.
- To stop an instance from trying to activate, click **Deactivate** on the **About** page.

FusionReactor will automatically attempt activation on startup. If your server can contact the licensing server and receive a valid response, there should be no issues.

If FusionReactor cannot contact the server or receive a valid response, you’ll see a banner indicating the problem.

There are three alternative approaches to activate FusionReactor:

1. [Configuring a proxy](/frdocs/Admin-and-data/Licensing/Troubleshooting/#configuring-a-proxy)
1. [Setting a firewall rule](/frdocs/Admin-and-data/Licensing/Troubleshooting/#setting-a-firewall-rule) to allow contact to the licensing server.
1. [Performing a manual activation](/frdocs/Admin-and-data/Licensing/Troubleshooting/#performing-a-manual-activation).

## Configuring a proxy

If you need to use a proxy to connect to external sites, you can configure FusionReactor to route all traffic through your proxy. This will allow FusionReactor to connect to the licensing server and activate automatically.

**Configure Proxy**:  

   - Go to the **About** page in FusionReactor.
   - Click on **Proxy Settings** in the menu.
   - In the settings, enter your proxy location and choose the authentication method: **Basic**, **Digest**, **NTLM**, or **No Authentication**.

**Test the Connection**:  

Once you’ve configured the proxy, click **Test Proxy** to ensure FusionReactor can successfully connect to the licensing server.

If the test is successful, FusionReactor will be able to activate through your proxy.


## Setting a firewall rule

If you’re running FusionReactor in a restricted environment where the firewall blocks access to certain external sites, you can configure a **firewall punch** to allow FusionReactor to contact its licensing server.

1. **Allow Firewall Access**:  You can either allow connections to the **hostname** of the licensing server or to a **static IP address**.

2. **Using Static IP Address**: If you choose to use a static IP address in your firewall rule, you’ll also need to set system properties in your application server to point FusionReactor to the licensing server with the static IP.

3. **Firewall Configuration Details**:  For more information on the required firewall rules and instructions on configuring the application server, see [FusionReactor firewall DNS and static IP address Rules](/frdocs/Admin-and-data/Licensing/Static-Licensing-Endpoints/#using-dns-firewall-rules).


## Performing a manual activation

If your server is restricted and cannot contact external sites, you will need to perform a **manual activation**. This process involves obtaining an activation code from your server and applying it on the FusionReactor portal using a machine that has access to our licensing server.

- **Manual Activation**: This process is more time-consuming than automatic activation.
- **Repetition**: You'll need to repeat this process each time you upgrade FusionReactor or renew your license, as there is no way to retrieve updated information from the licensing server.


!!! info "Learn more"
    [Manually activating FusionReactor](/frdocs/Admin-and-data/Licensing/Manual-Activation/)
