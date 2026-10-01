# ColdFusion 2023 Update 25: Windows startup issue with Java agents

Some Windows installations may fail to start after applying ColdFusion 2023 Update 25 when a Java agent, including FusionReactor, is configured. The reported issue concerns ColdFusion's startup environment and is not specific to FusionReactor. This page describes the symptoms and available workarounds.

We have reported the issue to Adobe and will update this guidance as further public information becomes available.

!!! info "Affected platforms"
    Only Windows installations are known to be affected. Linux and container installations are not currently known to be affected.

!!! tip "If you have not yet applied Update 25"
    Update 25 includes security-related library upgrades, so we would not recommend skipping it. Plan to apply one of the workarounds below alongside the update rather than deferring the update itself.

## Symptoms

When ColdFusion is started as a Windows service, the service terminates and the System log in Event Viewer records:

```
The ColdFusion 2023 Application Server service terminated with the following service-specific error:
The system cannot find the file specified.
```

Neither the ColdFusion logs nor the Windows Event logs explain the cause. To see the underlying error, stop the ColdFusion service and start ColdFusion from a command prompt using `C:\ColdFusion2023\cfusion\bin\cfstart.bat`:

```
Error occurred during initialization of VM
Could not find agent library instrument on the library path, with error: Can't find dependent libraries
Module java.instrument may be missing from runtime image.
```

Removing the `-javaagent` and `-agentpath` arguments from `jvm.config` allows ColdFusion to start. This confirms the diagnosis but is not a solution, as it leaves the server unmonitored. Use one of the workarounds below instead.

## Cause

Charlie Arehart's published investigation describes truncation of the PATH used by ColdFusion during startup. On affected installations, this can leave required Java libraries unavailable and prevent startup when a Java agent is configured.

## Workarounds

Two workarounds are available. Either should work, so choose whichever suits your environment.

!!! warning "Before you apply either workaround"
    The system PATH change is tied to one specific Java folder and affects every application on the server. If you later change the Java version ColdFusion uses, the entry needs updating to match.

    The registry change is not visible in any ColdFusion configuration file, and it will break `cfexecute` calls that run programs by name rather than by full path.

    Record which workaround you applied and on which servers, so it can be removed once Adobe ships a fix.

### Workaround 1: place the Java bin directory first in the system PATH

Adobe's published [Update 25 release notes](https://guides.adobe.com/coldfusion/en/docs/install-and-configure-coldfusion/coldfusion-2023-release-update-25.html) describe this startup issue and recommend placing the configured JDK's `bin` directory first in the Windows system PATH. Adding it at the end has no effect.

Keep the FusionReactor `-javaagent` argument in `jvm.config`, then:

1. Note the `java.home` value in `jvm.config`, found in the same `bin` folder as `cfstart.bat`, for example `C:\Program Files\Java\jdk-17.0.6`.

2. To test without changing the system, stop the ColdFusion service, then open a new Command Prompt as Administrator and run:

    ```
    set "PATH=<java.home>\bin;%PATH%"
    cd /d C:\ColdFusion2023\cfusion\bin
    cfstart.bat
    ```

3. To apply the change permanently, go to **System Properties > Environment Variables > System variables > Path > New**, add `<java.home>\bin`, then use **Move Up** until it is the first entry in the list.

4. Reboot the machine. The Windows service only picks up system PATH changes after a reboot. Then start the **ColdFusion 2023 Application Server** service.

### Workaround 2: set the PATH for the ColdFusion service only

Charlie Arehart has published an alternative that changes the PATH for ColdFusion only and leaves the system PATH untouched. It sets the PATH that ColdFusion sees to a short placeholder string, so that ColdFusion's own appended directories fit within the limit. The value cannot be empty, as ColdFusion only appends its directories when it finds a non-empty PATH.

**When starting ColdFusion from the command line:**

1. Stop the ColdFusion service.
2. In the command prompt, run `path=xx`.
3. Start ColdFusion with `C:\ColdFusion2023\cfusion\bin\cfstart.bat`.

This applies only to that command prompt window.

**When running ColdFusion as a Windows service:**

1. Open `regedit` and go to `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ColdFusion 2023 Application Server`.
2. Create a new multi-string value (`REG_MULTI_SZ`) named `Environment`. If an `Environment` value already exists, edit it and add `path=xx` as a new line rather than creating a second value.
3. Enter `path=xx` on a single line. If regedit warns about empty strings, click OK.
4. Start the ColdFusion 2023 Application Server service.

!!! note "Editing the registry"
    Back up the registry key before making changes.

Full background and root cause analysis are available in Charlie's post, [Solving a new problem as of CF2023 update 25 that can cause CF to not start](https://www.carehart.org/blog/2026/9/29/solving_new_cf2023_update_25_startup_problem).

## Multiple ColdFusion instances

Each ColdFusion instance runs as its own Windows service and needs the same change applied individually. To list the services on a server, run:

```
Get-Service *ColdFusion*
```

For Workaround 2, each service has its own registry key named after that service, so the `Environment` value must be added to each one.

## Reverting the workaround

Once Adobe releases a fix, remove whichever workaround you applied.

**Workaround 1:** go to **System Properties > Environment Variables > System variables > Path**, select the `<java.home>\bin` entry you added, and remove it. Reboot the machine, then start the ColdFusion service.

**Workaround 2:** stop the ColdFusion service, open `regedit` and go to the service key, then delete the `Environment` value. If you added `path=xx` to an existing `Environment` value, remove only that line and leave the rest in place. Start the service again.

## Status

Adobe's [Update 25 release notes](https://guides.adobe.com/coldfusion/en/docs/install-and-configure-coldfusion/coldfusion-2023-release-update-25.html) are the primary source for the current position, and we will update this page as further public information becomes available.

If you are affected and neither workaround resolves the problem, contact [support@fusion-reactor.com](mailto:support@fusion-reactor.com) with your ColdFusion version and update level, your FusionReactor version, and the output of `cfstart.bat` run from a command prompt.
