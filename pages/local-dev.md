---
title: Local Development Tutorial
permalink: local-dev/
---

This tutorial will walk you through testing, modifying, and debugging AltspaceVR web apps using a local development
environment.

*Note:* We have suggested tools in this guide, but if you already are comfortable with another set of web development
tools (other text editors, web servers, etc), feel free to substitute them. If you are used to using Webpack we have
created a [starter project](https://github.com/AltspaceVR/altspace-webpack-starter) to help you get started.

## [](https://github.com/AltspaceVR/AltspaceSDK/wiki/Setup-Guide#test-example)Launch an Example

1. Create an [AltspaceVR account](https://account.altvr.com/users/sign_up) then download and install the client for
    [Windows](https://account.altvr.com/downloads) or [Mac](https://account.altvr.com/downloads/mac).
2. Clone or download the [AltspaceSDK GitHub repo](https://github.com/AltspaceVR/AltspaceSDK) to a folder.
3. Download the trial version of Prepros 5.0 developer web server
    ([Windows](http://prepros.io.s3.amazonaws.com/installers/Prepros-Windows-5.10.2.exe),
    [Mac](http://prepros.io.s3.amazonaws.com/installers/Prepros-Mac-5.10.2.zip)) and import the AltspaceSDK folder.
    * _Web servers like Prepros and [live-server](http://tapiov.net/live-server/) are convenient, easy to use
        (and also live-reload your changes!), but you’re free to use your favorite web development tools instead._
4. Create a space for testing your app by visiting our
    [event creation page](https://account.altvr.com/users/my/events) in your desktop browser.
5. Click on “Start a Quick Event”.
6. Pick the “SDK Testing Medium App” environment.
    * _The “SDK Testing Large App” environment can be used to create apps that fill an entire space, but some of the
        examples may not work well there._
7. Click “Create Event”.
8. Click “Enter Now”.
9. AltspaceVR should launch and you will be automatically placed in your testing space.
10. The default URL of the enclosure is http://localhost:7878, so you should see the Prepros menu of active projects.
    Click on one of the AltspaceSDK example apps to try it out!
    * If you’re not using Prepros, you can edit the enclosure URL by
        [clicking on the enclosure button](https://asvrportalp.wpengine.com/wp-content/uploads/2014/07/2016-02-27-14_51_30-AltspaceVR.png).

## Make some tweaks

1. Download and run [Visual Studio Code](https://code.visualstudio.com/) or your favorite code editor.
2. Drag your project folder into Visual Studio Code. You can browse through the project files in the sidebar.
3. Open and edit the app you have launched in the client.
4. Save the file, and Prepros should reload the app automatically with your new changes.

## Inspect your app

1. Download the Coherent Debugger, which is essentially a remote Chrome inspector for the AltspaceVR browser.
    * Mac: [Mac Debugger Link](http://sdk.altvr.com/debugger/DebuggerMacOSX.zip)
        * _**Note:** The debugger will not run if you rename it from “Debugger.app” after you extract it._
    * Windows: [Windows Debugger Link](http://sdk.altvr.com/debugger/DebuggerWindows.zip)
2. Start the debugger.
3. Find and select the title of your app in the list
    * _**Note:** It’s a good idea to use a recognizable title in your app, so that you can find it easily in the debugger_
4. Depending on the app, enter `window.scene` or `window.sim.scene` into the console to navigate through your three.js
    scene. You can also type `altspace` to explore the altspace.js APIs.

## Tips

1. Non-VR mode can be useful for testing. Simply start the client with your HMD disconnected or turned off or use the
    `-disableVR` command line flag.
2. The client and your text editor can be docked side by side while in windowed mode.
    * Use shortcut keys to put the client into windowed mode, then move or snap it to the side of your screen.
        Mac: `Left Command + Left ALT + W` to toggle windowed mode, then move the window to a convenient location.
        Windows: `Left CTRL + Left ALT + W` to toggle windowed mode, then `Windows + Right Arrow` to snap window to the right
        * _In Windows, if the window remains black you may need to snap or resize it a couple times for an image to appear_
    * Alternatively, you can hold Shift or Option while clicking “Enter AltspaceVR” to configure resolution using the
        configuration window.
3. If you are using a different web server, configure it to use http://localhost:7878 so that you don’t need to change
    the enclosure URL every time.
4. Have fun and remember that you can always ask questions in our
    [Slack chat group](https://altspacevr-slackin.herokuapp.com/).
