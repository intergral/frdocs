title: CommandBox
# Install FusionReactor in CommandBox

To install FusionReactor in your CommandBox, we recommend that you use the [commandbox-fusionreactor module](https://www.forgebox.io/view/commandbox-fusionreactor). This module is developed and maintained by Ortus Solutions.  

On each release of FusionReactor, a new version of the FusionReactor agent and debug library is published to the
FusionReactor [ForgeBox repository](https://www.forgebox.io/view/FusionReactor). This ensures that your FusionReactor version
is kept up to date without you having to do anything.

## Getting started with CommandBox

```bash
CommandBox> install commandbox-fusionreactor
CommandBox> fusionreactor register XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
```

To configure your FusionReactor installation in CommandBox you can follow the [Ortus Documentation](https://www.forgebox.io/view/commandbox-fusionreactor).



## Usage

FusionReactor will choose a random, unused port to bind to. Check the console when starting the server to see what it is.

Open the FusionReactor web admin by running the following command:

```bash
CommandBox> fusionreactor open
```

## Video

<iframe width="560" height="315" src="https://www.youtube.com/embed/BahAUc0nvNc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

!!! question "Need more help?"
    Contact support in the chat bubble and let us know how we can assist.