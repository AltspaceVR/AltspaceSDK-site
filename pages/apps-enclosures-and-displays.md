---
parent: Get Started
title: Apps, Enclosures, and Displays
permalink: apps-enclosures-and-displays/
---

<figure>
    <video id="vid" src="/assets/videos/load-app.mp4" autoplay loop></video>
    <figcaption>TL;DR</figcaption>
</figure>

AltspaceVR is a fun and interesting place to spend your time, due in no small part to the wonderful variety of
content that our community of developers produce. If you want to play with these apps yourself (or build your own app),
you’ll need to know the basics. This tutorial will cover how you can load apps into your events, and explains the
available options on those app containers.

## Enclosures and Displays

AltspaceVR events and activities typically have one or more spaces designated for apps. These are called _enclosures_
in general, or _displays_ when they’re flat. The controls for these enclosures/displays are only available to the host
of an event, and to users flagged as developers. You can apply for this developer flag
[here](/devflag). If you are neither of these, you will still see apps and webpages in
the enclosures, but not control them.

<figure>
    <img src="/assets/images/enclosure.gif" />
    <figcaption>How to recognize an enclosure. Displays do not have corner markers.</figcaption>
</figure>

Think of enclosures as web browsers that can take up space. When you type a regular website into an enclosure
(like [AltVR.com](https://altvr.com)), it appears just as you’d expect. But type in the URL for an AltspaceVR-enabled
website (a.k.a. an app), and it will display in 3d. Depending on the app, you may even be able to interact with it,
or with the other players through it. You can only see enclosures/displays in your own spaces though, or spaces that
have been unlocked by the host.

## Allowed URLs

For security reasons, an enclosure's current page will only be shared with the other users in the room under certain circumstances.
Specifically, if the site's hostname is included in the space's default set of apps and pages (the space's *layout*).
For example, if the default URL is `https://developer.altvr.com`, you could browse to `https://developer.altvr.com/get-started/`,
but not to `https://github.com/AltspaceVR/AltspaceSDK`, because `developer.altvr.com` is in the layout but `github.com` is not.

There are three ways you can add a URL to your space's layout: 

1. In private events, this same-origin policy is not enforced, so you can simply type your desired websites right into enclosures/displays
    and it will work.
2. For public events, you can fill in the **Public Display URL** or **Public Enclosure URL** fields in the event creation form.
    If you need the ability to browse different sites than these, fill in the **Advanced** section at the bottom of the form with
    additional URLs, one per line. This will let you type or beam those URLs.
3. Developers can create a Web Space party portal (![](/assets/images/PortalNoBG.png) in your HUD), which prompts you to
    enter a fullspace app URL.

**NOTE**: If your space includes any links for `youtube.com`, you must also add the URL `https://d9cuxpcbk8j8.cloudfront.net` or
the YouTube video will not work. This is a temporary measure.

## Enclosure Controls

Enclosures have the same basic controls as the standard web browser, plus a couple enclosure-specific ones:

*   ![](/assets/images/browse.png) Menu – Toggle the enclosure settings bar
*   ![](/assets/images/beam-clear.png) Clear – Clear the enclosure of any running app
*   ![](/assets/images/back.png) Back – Go to the previous page
*   ![](/assets/images/forward.png) Forward – Go to the next page
*   ![](/assets/images/refresh.png) Refresh – Reload the current page
*   ![](/assets/images/search.png) Search – Search Google for the entered text
*   ![](/assets/images/stop.png) Clear URL – Clear the contents of the URL bar
*   ![](/assets/images/home.png) Home – Go to the default page for this enclosure

Developers also have access to special controls:

* ![](/assets/images/bug.png) Debug - Launch the Coherent debugger, or prompt to download it
* ![](/assets/images/profiler.png) Profile - View statistics about the running app

## Personal Browser and Beaming

In addition to enclosures in rooms, you also have a personal display that only you can see. This display behaves just
like every other display, plus one important feature: beaming. If you click the Beam (![](/assets/images/beam.png))
icon, your current page will be sent to one of the room’s enclosures, whichever is most appropriate for the content
being beamed. Beaming is only available when you are in an event/activity you’re hosting, or when the host has
unlocked the enclosure.

## Available Apps

What good are enclosures if there’s nothing to put in them? Here are some apps, demos, and examples that you might
find interesting:

*   [AltspaceVR SDK Examples](https://altspacevr.github.io/AltspaceSDK/examples/)
*   [A-Frame Examples](https://altspacevr.github.io/aframe/examples/)
*   [Community-submitted Apps](https://tinyurl.com/altvrsdkapps)

## What’s Next?

Has playing with the sample apps piqued your curiosity? Check out our other guide on
[How To Build Apps With A-Frame](/building-altspacevr-apps-with-a-frame/)!

