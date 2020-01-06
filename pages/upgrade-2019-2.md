---
title: Upgrading your Uploader projects to Unity 2019.2
permalink: upgrade-2019-2/
---

Original Announcement
======================

Hi everyone! You may have heard by now, AltspaceVR is updating to Unity 2019.2! This means a couple things for you world-builders:

* We are giving you an early build of AltspaceVR on this new version of Unity. The content you have uploaded in 2018.1 should technically continue to work, but in practice we have observed some changes to baked lighting and shaders, especially on Android. We highly recommend taking a moment to verify that your custom worlds and kits continue to look the way you expect. If they do not, you may need to re-export those assets in the new Unity version.
* You should start building your worlds and kits using Unity 2019.2.12f1 in addition to 2018.1.9f2. You will receive a warning from the Uploader about an unsupported version, but you can safely ignore that. We will be updating the Uploader once 2019.2 goes live to change the warning so it comes up for the old version instead of the new.
* The builds we are providing you are preview builds, and thus could have problems. Some of our official spaces, kits, or avatars may not display correctly. As such, we don't recommend using this build for general Altspacing, but only to verify your own content. If you experience any problems with this build other than art/visual problems, please report them like normal, but make it clear in the report that it is in the preview build.
* Note for Gear/Go/Quest users: Since the preview is not coming from the Oculus Store, you will need to uninstall official Altspace and side-load the provided build. This requires an Oculus developer account and a PC. Instructions for side-loading builds can be found elsewhere online. To switch back to the live build, you will need to uninstall this build via adb, then reinstall Altspace from the store. While the preview build is installed, you will get a nag screen to update when you launch, but ignore this.

And that's it! Without further ado, here's your build: [PC](https://altvr.com/unity-2019-preview-pc/) [Gear/Go](https://altvr.com/unity-2019-preview-go/) [Quest](https://altvr.com/unity-2019-preview-quest/). I have also posted those Go/Quest builds to SideQuest if you prefer to manage builds that way.

Upgrade Instructions
=====================

If you have a kit or template project in Unity 2018.1, follow these instructions to update and upload in Unity 2019.2:

1. Make sure you're running Uploader v0.8.3 or later. The in-editor version number has always read "1.0.0", so if you don't remember updating since it came out in November, you'll need to update it:
    1. Download the latest Uploader package from [here](https://altvr.com/download-latest-unity-uploader/).
    2. Open your project (in Unity 2018.1), and delete the `Assets/Altspace` and `Assets/Plugins` directories.
    3. Import the new Uploader package (Assets > Import Package > Custom Package...).
    4. Restart Unity.
2. Close Unity if you have it running.
3. Create a copy of your project folder. This will save you a lot of time if you plan on updating the 2018.1 assets during the preview, and also serves as a backup in case the upgrade fails.
4. Install Unity 2019.2.12f1:
    1. Go to the [Unity Download Archive](https://unity3d.com/get-unity/download/archive), scroll down to Unity 2019.2.12, and download it either via the Hub, or directly, as it suits you.
    2. Make sure when you install it, you also install Android Build Support, or you won't be able to build/upload Android bundles.
5. Open your project in Unity 2019.2.12f1. It will warn you that it has to upgrade the project, but click "Confirm".
6. Wait while Unity upgrades all your assets and meta files.
7. If you get any "blank errors" in the console after you import your project, you may be hitting a Unity bug. To fix this, close Unity, open the file `C:\Program Files\Unity\Hub\Editor\2019.2.12f1\Editor\Data\Tools\RoslynScripts\unity_csc.bat` in a text editor, change "csc" to "csc.exe" in line 3, and save. Reopen Unity, and the error should be gone.
8. Build your asset bundles like normal for kits or templates.

**NOTE**: The website kit/template upload form has not yet been updated to accept 2019.2 bundles, and assumes that all bundles uploaded are 2018. This means that if you upload 2019 bundles it will overwrite the live assets. DO NOT USE until this is fixed.

Congratulations, you've updated your project to Unity 2019.2!
