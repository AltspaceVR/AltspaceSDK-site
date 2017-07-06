---
title: Hosting Your AltspaceVR Apps
permalink: hosting-your-apps
---

AltspaceVR’s SDK uses standard web infrastructure to load its code, models, and textures, so every person that views an
app must be able to fetch all those assets. This is where hosting comes in. The term “hosting” is used to describe
publicly visible servers that distribute your content to the people that request it. You can set up your own servers to
do this, but there’s no need! These days, there are plenty of free web-based services available to developers that will
handle the hard work for you. This guide will walk you through the steps to run an app from JS Bin or GitHub Pages.

<a name="jsbin"></a>

## Hosting with JS Bin

Cloud-based development environments like JS Bin are by far the quickest way to get your code up and running when you’re
experimenting. To start, open your personal browser and go to [jsbin.com](https://jsbin.com). This site is a full
development environment that will let you build pages with HTML, JS, and CSS, all in-browser. Try it out! You can open
it either in a regular browser or in your AltspaceVR personal browser.

It’s recommended that you register and log into JS Bin before you start coding, but this is optional. If you log in,
your bins will be saved, and you can pull them up later through the File menu. If you’re using the AltspaceVR personal
display, you need to hide the output section before you start coding. You can do this by clicking the button at the top,
as shown in the image. If you don’t, your app will appear in front of your code window, and you may have to quit
AltspaceVR to get rid of it.

<a data-featherlight href="/assets/images/jsbin1.png"><img src="/assets/images/jsbin1.png" /></a>

In this image, we’ve included the demo app as explained in our [A-Frame
Tutorial](/building-altspacevr-apps-with-a-frame/). Once you’ve started filling in your app
(or at least typed _something_), the Share menu will appear, and you can grab the Live Preview URL by checking the
Output Only box, then copying the URL given:

<a data-featherlight href="/assets/images/jsbin2.png"><img src="/assets/images/jsbin2.png" /></a>

Once you have that live URL, paste it into the 3D enclosure, and your app will appear in the space. Your app will even
auto-reload when you make changes, as long as you’re facing the enclosure.

<a data-featherlight href="/assets/images/jsbin3.png"><img src="/assets/images/jsbin3.png" /></a>

That’s all you need to know about JS Bin to get going with your first app. For more advanced projects though, this
simplicity may not be desirable. For this, you should consider using GitHub.

<a name="github"></a>

## Hosting with GitHub Pages

In the world of open-source collaboration, [GitHub](https://github.com) is king. You can publish your project, get
general and specific comments on your code, make non-destructive code edits, and host your site, all without leaving
your browser. There are a ton of features that we won’t get into here, but they publish a [Hello World
guide](https://guides.github.com/activities/hello-world/) that covers the basics. Reading through that guide is
optional, but recommended. To get started, you’ll need to create an account on GitHub. The signup page is very prominent
on [GitHub.com](https://github.com):

<a data-featherlight href="/assets/images/github_home.png"><img src="/assets/images/github_home.png" /></a>

Once you’re logged in, you can create repositories, or “repos” for short. These are the collections of code, images, and
other documentation that make up your project. In addition to storing these, GitHub repos (i.e.
[Git](https://en.wikipedia.org/wiki/Git) repos) store all previous versions of each file, so you can go back in time and
view what a particular file looked like. Similarly, they can store multiple versions of the same file simultaneously
through what are called “branches”, which won’t be discussed here (you should read the tutorial from GitHub linked
above).

To create your first repository, you have two options. Either click on the + icon on the top-right side of the UI and
select “New repository”:

<a data-featherlight href="/assets/images/gh-create-repo.png"><img src="/assets/images/gh-create-repo.png" /></a>

Or alternatively, you can fork one of our project templates
([A-Frame](https://github.com/AltspaceVR/project-template-aframe) or
[Three.js](https://github.com/AltspaceVR/project-template-threejs)):

<a data-featherlight href="/assets/images/gh-fork.png"><img src="/assets/images/gh-fork.png" /></a>

Now that you’ve created your first GitHub repo, you’re ready to start adding content! But first we need to tell GitHub
to serve your files via Github Pages. From your repository page, click the Settings button:

<a data-featherlight href="/assets/images/gh-repo-page.png"><img src="/assets/images/gh-repo-page.png" /></a>

And scroll down to the section labeled GitHub Pages. There is a dropdown here where you can choose the branch that is
served, which is “None” by default. Change this to “master”, then click “Save”:

<a data-featherlight href="/assets/images/gh-pages.png"><img src="/assets/images/gh-pages.png" /></a>

The contents of your repository can now be found at the URL listed under the GitHub Pages section. These URLs are
generally of the form `https://<user-name>.github.io/<repo-name>/<path>`. When no path is given, GitHub (and in fact
most web servers) will return the file named “index.html”, so this is a good place to put the root file of your project.

Now that you have a URL for your content, it’s time to get uploading! There are two main ways to do this, depending on
how much you care about having a clean version history.

### The Easy Way

The easiest way to use GitHub is to simply do your coding right on the website, and upload your assets on there too.
This has the benefit of not requiring a local development environment, but at the cost of having to commit with every
single change you make. For beginners’ experimental projects, this is probably an acceptable trade-off for the sake of
simplicity.

<a data-featherlight href="/assets/images/gh-easy-way.png"><img src="/assets/images/gh-easy-way.png" /></a>

### The Right Way

The easy way works fine for projects with only a handful of files, and a handful of commits, but it’s not scalable. If
you’re taking a project seriously, you should set up a local development environment, do your testing and iterating
locally, then push your changes back up to GitHub. The “correct” way to do this is a big topic, so instead of reading it
here, you should check out some of the below resources.

*   Useful software:
	*   The official [Git client](https://git-scm.com/)
	*   [GitHub Desktop](https://desktop.github.com/) for Windows and Mac
	*   Some nice text editors: [Notepad++](https://notepad-plus-plus.org/) and [Atom](https://atom.io/)
	*   A local web server. [Prepros](https://prepros.io/) is recommended.
	*   The AltspaceVR Debugger ([Windows](http://sdk.altvr.com/debugger/DebuggerWindows.zip),
		[Mac](http://sdk.altvr.com/debugger/DebuggerMacOSX.zip))
*   Tutorials and other resources:
	*   AltspaceVR’s [Local Development Tutorial](/local-dev/)
	*   [git – the simple guide](http://rogerdudler.github.io/git-guide/)

## What’s Next?

If you haven’t already run through it, you should read the [A-Frame Development
tutorial](/building-altspacevr-apps-with-a-frame/). A-Frame is a great way to get an app up
and running quickly.
