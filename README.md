# PowerVR Graphics Native SDK #
![SDKExamples](http://powervr-graphics.github.io/Native_SDK/Documentation/SDKBrowser/images/ExamplesPageGraphic.png)
This repository contains the PowerVR Graphics cross-platform native (C++) SDK source code. The SDK includes optimized example applications to demonstrate the most efficient ways of implementing common 3D graphics effects on PowerVR graphics cores. It also includes a cross-platform OS and graphics API abstraction layer, and a library of helper code for resource loading, vector and matrix maths, text printing and more.

The SDK supports iOS, Android and Linux PowerVR devices. It also supports Windows, OS X and Linux PC emulation. Imagination's OpenGL ES emulation library, PVRVFrame, can be downloaded from our website [here](http://community.imgtec.com/developers/powervr/tools/pvrvframe/).

## About the SDK ##
### Framework ###
The PowerVR Graphics SDK provides a framework which is made up of PVRShell and PVRTools. PVRShell is a simple, light-weight architecture for the barebones of application setup, shutdown and event handling. It is designed to streamline the process of writing cross-platform graphics applications. PVRTools, on the other hand, is a cross-platform tools library containing the most commonly used functionality in a 3D graphics application.

### Example Applications ###
The examples provided in the SDK are fully commented, highly optimized C++ applications that cover a variety of rendering techniques. They are designed in a step-by-step tutorial style to gradually guide the most inexperienced graphics developers from a simple render of a single triangle to complex scenes that incorporate many objects, animations and shader effects.

## Setup ##
The Getting Started guide of our SDK Browser provides step-by-step instructions to build and deploy the SDK example applications for the various support operating systems. You can find the SDK Browser [here](http://powervr-graphics.github.io/Native_SDK/SDKBrowser.html).

### Raspberry Pi ###
Examples can be built on a Rasberry Pi running Linux by cd'ing into an Example's Build/LinuxGeneric directory and running the following command:

``` Shell
make PIBUILD=1 PLATFORM=armv6
```
e.g.
``` Shell
cd Native_SDK/Examples/Beginner/07_IntroducingPOD/OGLES2/Build/LinuxGeneric
make PIBUILD=1 PLATFORM=armv6
```
This has been tested on a vanilla Raspbian distro.

## Documentation ##
Our documentation (architecture guides, performance recommendations & white papers) can be found on the Imagination website [here](http://community.imgtec.com/developers/powervr/documentation/).

## Support ##
If you have any questions about the SDK, PowerVR device optimization/debugging or our tools, please contact us through our [public forum](http://forum.imgtec.com/categories/powervr-graphics). We also recommend checking out our [FAQ](http://forum.imgtec.com/categories/powervr-faq) to see if your question has already been answered.
If you would prefer to contact us confidentially, you can file a support ticket [here](https://pvrsupport.imgtec.com/new-ticket).

## Kudos ##
All Rasberry Pi specific changes are based on the [anonymousjustice/pvr-pi](https://github.com/anonymousjustice/pvr-pi) code repository.

## License ##
The SDK is distributed under a permissive license so it can easily be integrated into commercial and non-commercial applications. You can find the license [here](https://github.com/powervr-graphics/Native_SDK/blob/master/LICENSE.txt). To further clarify the terms, we also have an SDK license FAQ (available [here](http://community.imgtec.com/developers/powervr/faq-about-the-sdk-eula/)).
