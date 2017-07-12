---
parent: Get Started
title: Building AltspaceVR Apps With A-Frame
permalink: building-altspacevr-apps-with-a-frame/
---

When it comes to building something quick in AltspaceVR, it’s hard to beat [A-Frame](https://aframe.io/). It has a
simple HTML-based syntax, so anyone acquainted with web development will pick it up in no time. On the other hand, if
you don’t know what an HTML tag is, or how to add an image to a page, you should go through MDN’s terrific [Introduction
to HTML](https://developer.mozilla.org/en-US/docs/Web/Guide/HTML/Introduction) before you continue.

The world is full of web developers though, so if you feel comfortable experimenting on your own, you should jump right
in with the [A-Frame Documentation](https://aframe.io/docs/0.3.0/introduction/). You just need to add the `altspace`
component to your `<a-scene>` tag. Keep in mind though that development in AltspaceVR has a few
[caveats](https://github.com/altspacevr/altspacesdk#graphics-feature-support).

In either case, you should join the [AltspaceVR SDK Slack channel](/slack)! We love to see what you’re working on, and
are always happy to answer questions. In addition, there are special activities available only for developers that may
be better for apps. Just request developer status on Slack, and we’ll hook you up!

## What is A-Frame?

A-Frame is web graphics library developed by Mozilla, and is a relatively easy way to build a 3d scene without a lot of
complicated coding. It’s nearly as simple as adding an object, then telling it where it should be in the space. Take a
look at the demo below. In fact, load this page in an enclosure and you’ll see what I’m talking about!

<script src="https://aframe.io/releases/0.3.2/aframe.min.js"></script>
<script src="https://sdk.altvr.com/libs/altspace.js/2.0.2/altspace.min.js"></script>


<figure>
<a-scene embedded altspace='vertical-align: bottom;' style='height: 480px;'><br />
	<a-assets><br />
		<img id='moon' src='/assets/images/moon.jpg'/>
		<img id='stars' src='/assets/images/stars.png'/>
	</a-assets><br />
	<a-sphere position='0 1.5 0' material='shader: flat; src: #moon;'><br />
		<a-animation to='0 360 0' easing='linear' dur='20000' repeat='indefinite'/><br />
	</a-sphere><br />
	<a-sky src='#stars' radius='2500'></a-sky><br />
	<a-entity position='0 0 2'><br />
		<a-camera></a-camera><br />
	</a-entity><br />
</a-scene>
</figure>

This demo was constructed with a mere dozen lines of HTML (plus some boilerplate):

```html
<!DOCTYPE html>
<html><body>
<script src="https://aframe.io/releases/0.3.0/aframe.min.js"></script>
<script src="https://cdn.rawgit.com/AltspaceVR/AltspaceSDK/v2.0.2/dist/altspace.min.js"></script>

<!-- set up the scene -->
<a-scene altspace='vertical-align: bottom;'>

	<!-- preload all our textures -->
	<a-assets>
		<img id='moon' src='assets/moon.jpg'/>
		<img id='stars' src='assets/stars.png'/>
	</a-assets>

	<!-- add the moon to the scene -->
	<a-sphere position='0 1.5 0' material='src: #moon;'>
		<!-- add an animation to make it rotate -->
		<a-animation to='0 360 0' easing='linear' dur='20000' repeat='indefinite'/>
	</a-sphere>

	<!-- add the backdrop of stars -->
	<a-sky src='#stars' radius='2500'></a-sky>

	<!-- add a view camera (2d only) -->
	<a-entity position='0 0 2'>
		<a-camera></a-camera>
	</a-entity>

</a-scene>

</body></html>
```

We’ll dig into this in a bit, and understand it line by line, but first, a word about the overall structure.

## Hosting Your App

In AltspaceVR, apps are loaded into 3d web browsers that we call _enclosures_. Read our
[Apps, Enclosures, And Displays](/apps-enclosures-and-displays/) tutorial for how these work.

The topic of hosting is a long and complicated one, and a full article will be posted in the future (edit:
[the future is now!](/hosting-your-apps/)), but this should be enough to get you started.

The simplest option is to host your project locally, on your own computer. This will let you load your own app in
AltspaceVR, but you will be the only one to see it. Because your friends can’t access your computer, they can’t download
your app to run it, so the enclosure will appear blank to them. This is an acceptable trade-off in many cases where a
two-stage publishing process is used, i.e. develop locally, then upload to a server for public consumption. To host
locally, you will need a local web server like [Prepros](https://prepros.io/) on your computer. Run the web server, then
enter the URL `http://localhost:7878` into the AltspaceVR enclosure. See the [Local Development Tutorial](/local-dev/)
for details on how to set this up.

Like all websites, public AltspaceVR apps require a publicly available server. For new developers, the easiest way to
get up and running quickly is to use a cloud-based service like [JS Bin](https://jsbin.com). You can paste your code
into JS Bin from your personal browser, then open the live preview in the enclosure (via Share > Output only). This way
you don’t need to set up your own server.

Of course, JS Bin will be cumbersome for an app of any significant size, so you’ll want to make your own arrangements
for hosting when your app starts coming together. One popular option is [GitHub Pages](https://pages.github.com/), where
	you upload your files, and they host them as part of their suite of tools. This is the recommended option for
	medium-sized projects.

## The Entity-Component-System Pattern

A-Frame’s architecture is build around three concepts: the entity, the component, and the system. For the purposes of
this tutorial, I will only talk about the first (and most used) two, but you can read the full technical descriptions
[here](https://aframe.io/docs/0.3.0/core/). Firstly, _entities_ are blank slates, abstract objects of no description at
all. Onto these entities you add _components_, which give entities characteristics like shape, color, position, etc. By
using this pattern, Mozilla and the A-Frame community have developed a library of extremely reusable components that can
be applied to almost everything. Similarly, you can code your own components, though that’s a topic for another day.

In this system, entities are represented as HTML tags, and components are attributes on those tags. So in

```html
<a-box position="0 0 0" color='red'/>
```

`a-box` is the entity, and `position` and `color` are components of that entity. Note that in this example, `a-box` is a
“primitive”, which is a special case of `a-entity`. In its full form, that primitive would look something like this:

```html
<a-entity geometry='primitive: box' material='color: red' position='0 0 0'/>
```

There are lots of different primitives that do different things, but in general they clean up and repackage some of the
most commonly included components on that entity. For the full list of primitives, see the
[A-Frame documentation](https://aframe.io/docs/0.3.0/primitives/).

## &lt;a-scene&gt;

```html
<a-scene altspace='vertical-align: bottom;'>
	...
</a-scene>
```

`<a-scene>` is the root entity of the scene, and required by all A-Frame apps. To this we add our `altspace` component,
which will instruct A-Frame to send the scene to the VR renderer instead of drawing in 2d. The component also instructs
AltspaceVR to position our app relative to the floor instead of relative to the center of the enclosure
(`vertical-align: bottom;`).

## &lt;a-assets&gt;

```html
<a-assets>
	<img id='moon' src='assets/moon.jpg'/>
	<img id='stars' src='assets/stars.png'/>
</a-assets>
```

Most scenes are built from a collection of external models and images. By loading those models/images in the
`<a-assets>` section, they are loaded synchronously, meaning that the scene won’t continue until the assets are finished
loading, yielding a smoother experience. Those assets are also cached, so you can use them multiple times without having
to load them again.

To load individual assets, you’ll need to use an `<a-asset>`, `<img>`, or `<video>` tag under `<a-assets>` to load it.
Make sure to give each asset an identifier via the `id` attribute, so you can reference it later. Check the
[A-Frame assets documentation](https://aframe.io/docs/0.3.0/core/asset-management-system.html) for details about your
particular model format.

## &lt;a-sphere&gt;

```html
<a-sphere position='0 1.5 0' material='src: #moon;'>
	...
</a-sphere>
```

This part is straight-forward. The tag itself creates a sphere of the default radius (1 meter), the `position` component
triple positions it at roughly eye-level (1.5 meters off the floor), and the `material` component describes what the
sphere looks like. In this case, we tell it to use the moon texture we loaded in the assets section (the hashtag
notation is commonly used to refer to tag identifiers, i.e. the `id` attribute).

## &lt;a-animation&gt;

```html
<a-animation to='0 360 0' easing='linear' dur='20000' repeat='indefinite'/>
```

Animations are a little more complicated. They exist as their own tag, and apply to their parent entity. In the example,
the animation causes the sphere to rotate (the default attribute to animate) smoothly (`easing='linear'`), taking 20
seconds (`dur='20000'`) for a full 360 degrees (`to='0 360 0'`), repeating infinitely (`repeat='indefinite'`).

Animations come in all shapes and sizes. See the
[A-Frame documentation](https://aframe.io/docs/0.3.0/core/animations.html) for all the details on the possible
configurations for animations.

## &lt;a-sky&gt;

```html
<a-sky src='#stars' radius='2500'></a-sky>
```

Skyboxes allow you to use an image file as the sky for a scene, and are a quick way to change the ambiance of a scene.
To add one to your app, you only need to use the `<a-sky>` tag, with the `src` component set to an
[equirectangular](https://wiki.panotools.org/Panorama_formats) panoramic image. We also need to set the radius of the sky
down to 2500, so that it doesn’t conflict with the more distant default skybox.

# What’s Next?

So that’s it! You should now know how to set up your very own simple AltspaceVR app with A-Frame. If you want to keep
learning, we recommend you look at these [A-Frame examples](https://altspacevr.github.io/aframe/examples/) in-game, find
one that interests you, and examine its source code. If you’re looking for specific information, again, look us up on
[Slack](https://altspacevr-slackin.herokuapp.com/), and we’ll walk
you through whatever difficulty you’re having.

See you on the other side!
