# ShiVaOptions
user AI with an easy frontent to ShiVa's application.k* options

## Installation
1. Copy the files from the AIModel and Script folder into your project to the matching folders.
2. Start ShiVa and load your project.
3. Add the "ApplicationRuntimeOptions" into your game's user AI model stack

## How to use
Please have a look at the function names, they are mostly self explanatory. Either call the functions directly, or use the custom handler interface with user.sendEventImmediate().

If you want to define presets, you can do so in the ApplicationRuntimeOptions.onLoadPreset() and then switch dynamically between them.

## Missing functionality
A number of performance-relevant options are bound to scenes and not the application API, such as animation LOD, dynamic shadow and normal map fade distance, or ambient occlusion. You might want to give them a look as well.


Cheers,
Felix
