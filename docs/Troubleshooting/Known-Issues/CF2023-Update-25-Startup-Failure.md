# ColdFusion 2023 Update 25 prevents startup with FusionReactor on Windows

After applying ColdFusion 2023 Update 25 on Windows, ColdFusion may fail to start while the FusionReactor Java agent is configured in `jvm.config`.

This is caused by a change in ColdFusion 2023 Update 25 and is not a defect in FusionReactor. Any product that loads the Java instrumentation library can trigger the same failure. We are working with Adobe towards a permanent fix.

!!! info "Affected platforms"
    Only Windows installations are known to be affected. Linux and container installations are not currently known to be affected.

## Symptoms

When ColdFusion is started as a Windows service, the service terminates and the System log in Event Viewer records:

```
The ColdFusion 2023 Application Server service terminated with the following service-specific error:
The system cannot find the file specified.
```

Neither the ColdFusion logs nor the Windows Event logs explain the cause. To see the underlying error, start ColdFusion from a command prompt using `cfstart.bat` in your ColdFusion `bin` folder, for example `\ColdFusion2023\cfusion\bin\cfstart`:

```
Error occurred during initialization of VM
Could not find agent library instrument on the library path, with error: Can't find dependent libraries
Module java.instrument may be missing from runtime image.
```

Removing the `-javaagent` and `-agentpath` arguments from `jvm.config` allows ColdFusion to start. This confirms the diagnosis but is not a solution, as it leaves the server unmonitored. Use one of the workarounds below instead.

## Cause

At startup, ColdFusion appends several of its own directories to the Windows system PATH for its own internal use. One of these is the `bin` folder beneath the Java home configured for ColdFusion, which is where `instrument.dll` lives.

As of Update 25 on Windows, that internally constructed PATH is truncated at around 254 characters. On machines where the system PATH is already long, the appended entries are cut off, including the Java `bin` folder. Windows is then unable to locate `instrument.dll` when the JVM starts with a Java agent, and startup fails before the agent loads.

## Adobe workaround

Adobe has issued the following workaround. Keep the FusionReactor `-javaagent` argument in `jvm.config` and place the Java `bin` directory at the very start of the system PATH. Adding it at the end has no effect, because the end of the PATH is the part that gets truncated.

1. Note the `java.home` value in `jvm.config`, found in the same `bin` folder as `cfstart.bat`, for example `C:\Program Files\Java\jdk-17.0.6`.

2. To test without changing the system, open a new Command Prompt as Administrator and run:

    ```
    set "PATH=<java.home>\bin;%PATH%"
    cd /d C:\ColdFusion2023\cfusion\bin
    cfstart.bat
    ```

3. To apply the change permanently, go to **System Properties > Environment Variables > System variables > Path > New**, add `<java.home>\bin`, then use **Move Up** until it is the first entry in the list.

4. Reboot the machine. The Windows service only picks up system PATH changes after a reboot. Then start the **ColdFusion 2023 Application Server** service.

## Community workaround

Charlie Arehart has published an alternative that changes the PATH for ColdFusion only and leaves the system PATH untouched. It sets the PATH that ColdFusion sees to a short placeholder string, so that ColdFusion's own appended directories fit within the limit. The value cannot be empty, as ColdFusion only appends its directories when it finds a non-empty PATH.

**When starting ColdFusion from the command line:**

1. In the command prompt, run `path=xx`.
2. Start ColdFusion with `cfstart.bat` from the ColdFusion `bin` folder.

This applies only to that command prompt window.

**When running ColdFusion as a Windows service:**

1. Open `regedit` and go to `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ColdFusion 2023 Application Server`.
2. Create a new multi-string value (`REG_MULTI_SZ`) named `Environment`.
3. Set its value to `path=xx`, followed by an empty line.
4. Start the ColdFusion 2023 Application Server service.

!!! note "Editing the registry"
    Back up the registry key before making changes.

Full background and root cause analysis are available in Charlie's post, [Solving a new problem as of CF2023 update 25 that can cause CF to not start](https://www.carehart.org/blog/2026/9/29/solving_new_cf2023_update_25_startup_problem).

## Status

A permanent fix needs to come from Adobe. The issue is tracked under [CF-4234454](https://tracker.adobe.com/#/view/CF-4234454), and this page will be updated as the position changes.

If you are affected and neither workaround resolves the problem, contact [support@fusion-reactor.com](mailto:support@fusion-reactor.com) with your ColdFusion version and update level, your FusionReactor version, and the output of `cfstart.bat` run from a command prompt.
