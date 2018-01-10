---
title: Using your own Firebase server
permalink: personal-firebase-server/
---

1. Your app must use Altspace SDK version 0.13.2 or higher
1. Log into the [Firebase console](https://console.firebase.google.com/) (You neeed a Google Account for this)
1. Create a new project. A single project can be used for multiple apps but we recommend creating a separate project for each of your apps
1. Click on "Database" in the menu, then click on the "Rules" tab
1. Change the default `".read"` and `".write"` rule from `"auth != null"` to `true`
   Note: This is a temporary limitation with the SDK. You will eventually be able to use Firebase's security rules to restrict reads and writes to your app data.
1. Click on "Publish" to save the rules.
1. Click on the "Data" tab and copy the database URL. It should be something like `https://<project-name>.firebaseio.com/`
1. In your app, set the `baseRefUrl` config option to your database URL when calling `altspace.utilities.sync.connect()`, or set `baseRefUrl` in your A-Frame `sync-system`
1. Your app should now be using your Firebase project server. You can use the Firebase console to manage and inspect your app's data.