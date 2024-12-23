# Manual Activation

Performing a manual activation in FusionReactor requires you to have access to place an activation code onto a browser with an
 internet connection. This activation code is used to generate an activation key that can be used to activate the FusionReactor
  instance.


This is a process that should be completed if it is not possible to activate FusionReactor via any other method. Workarounds to
 [resolve licensing connection problems](Troubleshooting.md#troubleshooting-license-connection-issues.md) should be used where possible.

!!! note
    Manual activation is a process that must be repeated per instance, it is not possible to generate a single activation key
     and apply this to multiple instances.

## Video Tutorial

<iframe width="560" height="315" src="https://www.youtube.com/embed/5EHY8TEa8g8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## How to Manually Activate

When you apply a license on the about page of FusionReactor, but the instance cannot establish a connection to the licensing
 serer, you will be redirected to the manual activation page.

 ![Manual Activation code](/images/Licensing/Manual-Activation-Code.jpg)

 On the activation page, you will see instructions on how to manually activate, an activation code and an input box for an
  activation key.

To manually activate:

1. Go to the [Manual Activation Page](https://portal.fusion-reactor.com/manual) on a machine with an internet connection.
2. Copy the activation code from FusionReactor into the manual activation page.
    ![Manual Activation Input](/images/Licensing/Manual-Activation-Input.jpg)

    !!! note
        You may be required to save the activation code to disk and transfer it to a new machine via usb, ftp or other methods.

1. Click submit.

    This will either display the reason why it was not possible to activate FusionReactor:

    ![Manual Activation Error](/images/Licensing/Manual-Activation-Error.jpg)

     Or an activation key:

     ![Manual Activation Success](/images/Licensing/Manual-Activation-Success.jpg)

1. Copy the output of the manual activation into the activation key input field of FusionReactor.

    ![Manual-Activation-Key](/images/Licensing/Manual-Activation-Key.jpg)

1. Click Activate.

    You will be redirected to the about page of FusionReactor and should now be able to use FusionReactor.


## Caveats to Manual Activation

Due to the fact that with a manual activation stops a FusionReactor attempting to contact the licensing server, the
 FusionReactor is unable to periodically check whether the license installed remains valid.

 For this reason, there are limitations to manual activation that must be considered:

 * When upgrading FusionReactor you are required to manually activate FusionReactor each time you install a new major or minor
  version.
    * For Example upgrading from version 8.3 to 8.4 or 8.3 to 9.0 would require you to repeat the activation process.
* With a subscription license, each time your license renews you are required to repeat the activation process.
    * As the license expiry date stored in the FusionReactor instance cannot be updated automatically, this is something that
     has to be done manually.

!!! warning
    It is not recommended to purchase a monthly subscription when manual activation is required.
