# Workshop 1
## Objectives
Get familiar with the Framer interface
Introduce basic animations, Events, States, and decisions.

---


 Complimentary files
[Slides](https://docs.google.com/presentation/d/1D9ExqZuZ4E4fjNWcv4BdyLPSPVMLlFcYqvQuHYPx-zc/edit#slide=id.g35f4d47385_0_0)
[The Framer 101 Challenge](https://framer.cloud/YvlIf/)
[The Framer 101 Challenge _ Solved](https://framer.cloud/VFqCK/)

## Timeline
1. Welcome!
2. What’s in a Framer project folder?
3. Working with Sketch
4. The Framer interface: design mode
5. The Framer Interface: code mode
6. The Framer 101 Challenge
7. Snippets library
8. More resources

- - - -

## Run Through
### Welcome!
Happy to have you on board! I hope you’ll find this document helpful to learn, teach, or learn to teach Framer. It’s the first of a series which aims to make its readers and users more confident in their Framer prototyping abilities, and broaden their understanding of code.

NB: If you haven’t already, don’t forget to ask Alex on the Mobile team for a Framer license!

### What’s in a Framer project folder?
Let’s dive in with the very basics:

* Each Framer prototype is stored not as a single file but as a folder. If you see a folder name ending .framer, that means it’s a full prototype.
* To open these folders, you can go via the classic file > open (or hit cmd+o) or you can drag the whole folder directly onto the Framer icon in your dock.
* Each project folder will have a handful of sub-folders such as images, modules, sound… These store relevant content used in your prototype.

### Working with Sketch
Framer supports Sketch and Figma files import.

You can import these via the import button (or by hitting cmd+i) in the bottom left of the code interface (hit cmd+2 to switch from design to code mode, cmd+1 switches back to design mode). There are a handful of things to consider when importing these projects into your Framer prototype:

* In your sketch files, all layers you want to pick up in code need to be in a group.
* Naming conventions get extremely important, so a tidy sketch file is a must! Using camelCase is good practice, and any spaces in group names will be replaced by an underscore.
* When calling your Sketch layers in your Framer prototype, you will have to tell Framer they are coming from your sketch document by adding `sketch.` in front of your layer ’s name.

* However, importing you sketch file will add a line of code at the top of your document…

``` coffeescript
sketch = Framer.Importer.load("imported/ExampleFile@2x", scale: 1)
```

... which you can edit to something like this:

``` coffeescript
$ = Framer.Importer.load("imported/ExampleFile@2x", scale: 1)
```

So that instead of typing  `sketch.layerName` you can type `$.layerName` which will save you time.

On another note; Framer supports copy-pasting from Sketch. Although masks and groups are handled slightly differently in Framer’s design mode, copy-pasting and working within Framer gives you more control over what you’re working on, especially when looking at Targets in design mode, which brings me to…

### The Framer Interface: Design mode
It’s a fairly straightforward one, with a lot of similarities to the Sketch interface!

* The very left column lets you pick what type of layer you want to create.
* On its right, this column will display all layers and their hierarchy. You can drag and drop them to reorganise what goes on-top of (or inside) what.

* Frames are a key feature of the interface. They will act as your artboards, as layers, as groups, and behave a bit like divs in code. When dragging a small frame onto a big frame, it automatically becomes its child (ie. it will fall under it in terms of hierarchy, and follow that frame’s behaviour). This is important, as some of its properties will become relative to the big frame it’s in.

* Frames are also handy as they can be used to create UI elements like buttons, images… It’s good practice to use them rather than vector shapes, as vectors will have to be put in frames anyway in order to be picked up correctly in code mode.

* Another key thing for your layers to be picked up in code are Targets. Layers must be Targeted to be usable in code mode.

* To target a layer, hover over its name in the hierarchy column. An outlined target shape will appear. Click it, and its centre will fill up and its code-friendly name will appear.

`![](https://i.imgur.com/fchfOgx.png) `

* This gives you the opportunity to edit it to something more efficient.  Once targeted, the target icon will continuously show next to the Frame name. To remove a target, right-click and hit _delete target_.

`![](https://i.imgur.com/oikpPoi.png) `

* Targets can be really useful when trying out different versions of the same interface. Call each version the same thing, but only target one version at a time in order to see how each one works in your prototype.

### The Framer Interface: Code mode
Framer’s code mode is a real treasure island when it comes to shortcuts!

* The far left column has shortcuts to snippets of code to add to your editor. You can also access Framer’s Documentation from there (or via cmd+d) which is a real life saver.
* The column to its right also shows hierarchy. You can hover over each layer name to highlight them and show their basic properties on the floating preview panel. The greyed out layer names are the names of layers you haven’t Targeted.
* The editor is where the magic happens. The code you have in there will be read by Framer from top to bottom.
* In the top right corner you’ll find preview and cloud options.
* At the bottom of your editor is a small bug footer. When you’ve got errors in your code, it’ll signal you what type of error it is.

* In the editor, you can _fold_ code into sections or chapters called folds. This helps keep things nice and organised. You can put code in a fold by highlighting it then hitting cmd+return. Double click a fold to enter it, and hit the small [×] on the top left of the editor to exit it.
* You can also add comments to your code by starting your line with a # . These comments won’t affect your code, and it’s good practice to annotate your code once in a while to make it easier to navigate.

- - - -

## Exercise: The Framer 101 Challenge
### Quick links
* [The Framer 101 Challenge](https://framer.cloud/YvlIf/)
* [The Framer 101 Challenge _ Solved](https://framer.cloud/VFqCK/)

### Intro
The Framer 101 Challenge is essentially a prototype with missing bits of code. The idea is that each chapter requires you to write some code as instructed on the page. Once you’ve written that code, a _next_ button appears an takes you to the next chapter.

This means there’s already a bunch of code in there to trigger all these animations and make the interface (hopefully) somewhat fun, but don’t hesitate to also have a look through the set-ups, it might even help understand what you’re aiming for!

There’s 8 chapters in the Challenge, covering 4 topics in total:
* 1 & 2: Animation basics
* 3 & 4: Events
* 5 & 6: Cycles, and cycling through them
* 7 & 8: if/else decision statements

If you haven’t been through this, it can be a bit ambiguous what the challenge is trying to get you to do (I’m working on it, I promise) so it’s best to practice it next to someone that has either done it, or someone who’s got these basics down. Reading what’s inside each _Spoiler_ fold might also help understand the conditions that need to be met in order for the _next_ button to appear.

It’ll be primarily using code mode, so go ahead and switch with cmd+2 if you haven’t already!

### Method and solutions
**Give the challenges a try before reading ahead!**

**Challenge 1**
I’d start by finding out _where_ that yellow safe zone actually is.
There’s multiple ways you can do this:
* Switching back to design mode, you can click on the zone and see its x coordinate on the far right panel.
* Using `print safeZone.x`  its x positioning will show up in the print console.

NB: `print` is a really handy way to find out specific information about your layers.

Using methods similar as above (or, in this case, by eye), we can also pick up that the layer safeZone is rotated 45 degrees.

So we can make `box` animate:

``` coffeescript
box.animate
	x: 220
	rotation: 45
```

**Challenge 2**
Same method, but with more properties to find out about.
As well as changing height, width, x and y properties, layer `circle` needs to drop its borderRadius all the way down to zero in order for it to become a rectangle.

``` coffeescript
circle.animate
	x: 88
	y: 340
	width: 200
	height: 80
	borderRadius: 0
```

**Challenge 3**
Onto events!
Events, aka listeners, are used to trigger stuff. They’re recognised by their syntax: `onTap` , `onDrag`, `onSwipe`  and the fact that they’re followed by a dash-rocket ( `->` ). The dash rocket is a signal to Framer that “hey, something is about to trigger something else, listen up to this action!”.

Now, we can trigger the star’s animation onTap. The syntax is as follows:

``` coffeescript
star.onTap ->
	star.animate
		scale: 2
		backgroundColor: "yellow"
```

NB: There’s a whole lot of events! They can go as `onSwipeUp` , `onDragStart`, `onMouseOver`, `onTouchStart`, `onPanRight` … and so on; the Docs (cmd+d) is a good place to find out about all of them.

**Challenge 4**
Again, exact same structure as the previous one! We want to make the square’s opacity animate down to 0, and trigger this onTap.

``` coffeescript
square.onTap ->
	square.animate
		opacity: 0
```

If you’re going for the extra mile, you could even set the animation to speed up a bit! The default animation time is 1 second, let’s use options to bring it down to 0.5!

``` coffeescript
square.onTap ->
	square.animate
		opacity: 0
		options:
			time: 0.5
```

I’m also going to use this opportunity to point out a real handy Framer feature, which will help you code less:

`![](https://i.imgur.com/kTbcxJ6.png)`

When you click that square which runs along the left side of your code, the hierarchy column will switch to a visual interface which lets you edit the layer’s properties. Edits made in that interface are added to your code as you’re changing them!

`![](https://i.imgur.com/VkPkVCP.png)`

That interface also hides another little tab. At the top of it is a curve icon, which when clicked takes you to the animation options tab. It’s got a visual representation of curves and timings for all your interaction design needs.

`![](https://i.imgur.com/42LwNe1.png)`
 When in that view, you can also go to the floating preview and drag things around, re-size them…

**Challenge 5**
On this one, we’re given some states for the layer `toggle` .  We can define states which, if called up, will override properties given to a layer in design mode. In this case, the states are named _on_ and _off_ but you could name them whatever you like. The animation options also define how the layer will animate to that state.

There are multiple actions associated with states:
* stateCycle will cycle through all the states listed within its brackets `layerName.stateCycle(“stateName1” , “stateName2”)`
* stateSwitch will instantly switch to the state listed in its brackets `layerName.stateSwitch(“stateName”)`
* You can also animate to a state by using `layerName.animate(“stateName”)`

In this case, we’re hoping to make the toggle switch back and forth between _on_ and _off_ onTap.

Here’s how to go about it:
``` coffeescript
toggle.onTap ->
	toggle.stateCycle("on", "off")
```

NB: When using states, make sure that you define the states _before_ you try animating them, otherwise Framer will get confused as it won’t see what state you’re trying to use.

**Challenge 6**
Piece of cake, same method but with more states! The states are hidden into the Spoilers fold, so have a browse if you’re not sure what states you’re animating to!

``` coffeescript
button.onTap ->
	pointer1.stateCycle("summer", "autumn", "winter", "spring")
```

**Challenge 7**
This one builds on some of the code from Challenge 6. It looks the same, but layers are named a bit differently in order to be differentiated from one challenge to the next.

We can start by copy pasting the code from Challenge 6 and adapting layer names to match the ones we’re looking at.

``` coffeescript
button2.onTap ->
	pointer2.stateCycle("summer", "autumn", "winter", "spring")
```

Now we can start including the conditions. The instructions give a little clue that an if statement will have to be used. This leads me to a good tip which is writing down in plain language what you’re trying to code, like this:

> On tap, _pointer2_ will cycle from _summer_, to _autumn_, to _winter_, to spring; if the state _pointer2_ is on is called _summer_, then _holidays_ will animate from opacity 0 to 1.  

It makes writing it in code slightly more approachable.

``` coffeescript
button2.onTap ->
	pointer2.stateCycle("summer", "autumn", "winter", "spring")

	if pointer2.states.current.name is "summer"
		holidays.animate
			opacity: 1
```

The solution sets a condition on the state name. It’s a bit of a wordy syntax but the more you use it the easier it’ll get to remember it!

Now _holidays_ will appear as soon as the pointer hits _summer_, and we can make _holidays_ disappear again with an `else` condition. The `else`  is another way of telling Framer, “if it’s anything other than what I just defined, do this”. It makes our final snippet of code look like this:

``` coffeescript
button2.onTap ->
	pointer2.stateCycle("summer", "autumn", "winter", "spring")

	if pointer2.states.current.name is "summer"
		holidays.animate
			opacity: 1
	else
		holidays.animate
			opacity: 0
```

* Notice the indentation on this bit of code is key. We are setting the condition within the tap event, and what should happen if the condition is met is one more tab-space in.

* As well as `is`, we could also have used `==`. If we wanted it to reverse this and make it appear on everything but _summer_, we could have used `isn’t` or `!=`.

**Challenge 8**
Last of the Framer 101 Challenge!
There are a lot of different ways to go about this one, so the following answer isn’t necessarily the only right answer! Let’s write down what we want to code;

> When I stop dragging the plane, if its y coordinate is smaller than the limit of the _flightzone_ it will animate up. Otherwise, it will animate back down.  

In there, there’s mention of an event; `onDragEnd` , there’s a condition; `if plane.y <` …, and some basic animations to different y values.

The end of the condition is that it needs to be greater than the maximum y value of the flightZone. We could find that out by going into design mode or using the print trick, but there’s an even easier way to do it! We can set the condition to: `if plane.y < flightZone.maxY`  so that the plane will animate up when it reaches the bottom of the flightZone.

Putting all these pieces together gives us:
``` coffeescript
plane.onDragEnd ->
	if plane.y < flightZone.maxY
		plane.animate
			y: 194
	else
		plane.animate
			y: 480
```

**The Finish Line!**
And that’s it for the Framer 101 Challenge!

- - - -

## Snippets Library
That may seem like a lot of wording to remember, which is why Snippets are a real life saver!

* Charlie Deets put together a [library of essential snippets](https://github.com/robotdestroy/Framer-Snippets-Library) which I highly recommend you download!
* To add them to your library, open up Framer and go to the Snippet tab in the far left column.
* At the very bottom of the snippets, you have the option to _Show Snippets Folder…_.
* If you open that up, you can then paste or drag and drop your newly downloaded snippets in there, and they’ll appear in your Framer library.

## Other resources
* [Medium](https://blog.framer.com/)! There are lots of amazing tutorials, articles, and resources on there. [The School of Do](https://medium.com/the-school-of-do/tagged/framer) and its cheat sheets are great.
* Sketch Together also has an [amazing crash course](https://www.youtube.com/playlist?list=PLWlUJU11tp4f41p4dzizVkjjTQ38kA0wG) on YouTube
* [The Framer Book](https://framerbook.com/) is a really comprehensive piece of documentation with great examples, a lot of the content covered in these workshops will come from there!

- - - -

> Thanks for reading and hope to catch you at the next workshop!   


#framer/workshop1## Framer-for-beginners
