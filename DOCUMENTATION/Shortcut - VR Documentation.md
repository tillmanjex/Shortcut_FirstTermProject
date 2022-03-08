---
creation date: 2021-11-25 10:16
---
#❌ 
# Shortcut (First Term Project) Documentation
## Unity Version 2020.3.23f1

[Windows Mixed Reality Root](https://docs.microsoft.com/en-gb/windows/mixed-reality/)
[Open XR Unity Plugin](https://docs.unity3d.com/Packages/com.unity.xr.openxr@1.3/manual/index.html)
[HP Reverb Interaction with OpenXR](https://developers.hp.com/omnicept-xr/blog/reverb-g2-tracking-openxr-unity)

### 2021-11-25: First Steps
Up until now experienced script errors when trying to setup a Windows Mixed Reality VR session via the Mixed Reality Features Toolkit application and Windows tutorial. 

### 2021-11-30: Technical Progress
Decided to use the built in VR Base unity template builder for a VR setup, and it seems to be working so far. Followed [this tutorial](https://circuitstream.com/blog/vr-locomotion/) for XR scene setup and locomotion. Could not really get locomotion to work and then did research only to find that there could be cross compatability problems as the VR Base unity preset most likely did not include the necessary Windows Mixed Reality assets that I needed. 

Went back to try with the [Windows MRTK Sollution](https://docs.microsoft.com/en-gb/learn/modules/learn-mrtk-tutorials/1-5-exercise-configure-resources), but this time with the recommended 2020.2.* Unity build. I was previously using a 2021 build and had learned that a newer version, does not mean a better more more compatible version when it comes to Unity updates... 

```note-red
Note: Step 5 on page 5 of 9 in the above MRTK sollution could be a point of faliure. 
It's recommending me to go with OpenXR setup and to **not** select Windows Mixed Reality - which seems counterintuative. 
```

Page 7 of 9:
The **ObjectManipulator script** makes an object movable, scalable, and rotatable using one or two hands.

GOT CONTROLLER TRACKING AND TELEPORTATION!
Essential Steps:
- Instal MRTK assets INCLUDING input tools (this is left out of the main HP setup tutorial from windows...)
- Enable ReverbG2 controller profile in interaction profiles. edit -> project settings -> OpenXR
- Download XR Interaction Toolkit (NONE of the windows tutorials talk about this)

![[ShortcutFirstDevScreenshot.jpg]]

### 2021-12-01: Replacement of GPT-2 Integration?
Idea to include Processing / three.js in the VR world.
I would really like to work on the coding side of things as its a skill I really value and am intrigued by. The integration of the mirror and AI interaction could be too challenging for the scope of a first term project, so I was considering to impliment animated patterns based on Processing sketches and / or 3D objects inside the VR space made in three.js.

### 2021-12-09: Language Generation Instead of GPT-2
[RITa](https://rednoise.org/rita/#examples) is a language generator tool for p5.js and processing (+ more). 

> Features include an integrated scripting language ([RiScript](https://observablehq.com/@dhowe/riscript)), a letter-to-sound engine, grammar and Markov-based text generation, tools for inflection, conjugation, stemming and tokenization, and analysis of English features such as part-of-speech, phonemes, syllables, and stresses.

### 2021-12-10: Questions and Concerns
- The final step of compiling the unity project into an app is a massive unknown. 
- Also, one of the project criteria is "flexibility". It's another big task to take into account hardware compatability and controller bindings. 
- Could the project be run fro my computer, with my headset and from Unity? No doubt his will reduce the quality of my submission, but it would take a lot of load off from the final stages of compiling and preparing for "distrubution". 
- The large degree of technical problems that I could face when dealing with Unity and VR could hinder the project greatly and leave me with a dissapointing result. Perhaps switching to my alternative idea of a website audio player that plays continuously across pages, is more feasible considering it also takes into account the content we are learning in class. 

### 2021-12-13: Adding Terrain
Bought the Sahara Desert unity asset and placed in the environment. 
It definitely looks better from afar... But already I can move around on the dunes!
email blacksun.unityassets@gmail.com about missing mono script

Rebuilding without MRTK media toolkit component as it added a lot of functionality in it's own interface. It does work and it has got me moving quicker, but there is such poor documentation for it that I can't troubleshoot or figure out how to do extra things (ie continuous movement).
I'm going to rebuild using a regualr per component setup so I can follow along with tutorials and also troubleshoot more easily as this setup is very similar to how many other devs are doing it. 

This tutorial set me up in a quarter of the time of the MRTK windows tutorials... 
https://www.youtube.com/watch?v=1VC3ZOxn2Lo

Stuck trying to figure out how to not have my character fall through meshes... 
Tried character controller and driver, but didn't work. 

### 2021-12-14: Successful Collision 

 Now gravity is working for the player and I can walk on the Sahara terrain!
 Needed to add Character Controller to the XR Rig. 
 Character Controller Y Center and level offsett need to work together in that *level offset* is starting the player way up where the desert is and *controler Y center* is offseting the position of the camera view.  
 
 Questions: How to add processing sketches on a sphere?
 
 ### 2021-12-18: References
 [Youtube: Add video in Unity, also on a sphere](https://www.youtube.com/watch?v=KG2aq_CY7pU)
 [Youtube: Export 360 video from Unity](https://www.youtube.com/watch?v=9WEjMckJPFY)
 [Unity Recorder Package](https://docs.unity3d.com/Packages/com.unity.recorder@2.0/manual/RecorderWindow.html)
 
 ### 2022-01-04: Audio Work
 Added ambient wind audio and footstep sound effects. 
 [Footstep soundeffect script tutorial](https://www.youtube.com/watch?v=ih8gyGeC7xs)
 Look at [Wind Zones](https://docs.unity3d.com/2019.3/Documentation/Manual/class-WindZone.html) and [Particle Systems](https://docs.unity3d.com/2019.3/Documentation/Manual/class-ParticleSystem.html) for making the wind more realistic.
 
 Added wind zone and also trialed the idea of a "dream tree" (pictured below).  

![central tree added](../IMAGES/CentralTreeAdded.png)

 ### 2022-01-05: Reference for Avatar Design
[Dust storm tutorial](https://www.youtube.com/watch?v=c_FJ2L3EvJM). Maybe this can also be a cheap quick hack to get the "sand walker" VR hand prefab going?
Revisit old track "sand" for implementation into the project. Will fit well. 

### 2022-01-08: End of Map Idea
[In game settings UI Youtube tutorial](https://www.youtube.com/watch?v=__iTtJHZg6k)
Visual world integration idea: extend the desert, but shroud it in ever thickening mist. The further you go in, the more you lose sight of the main area and you start to hear hellish shreeks of lost souls. 

### 2022-01-27: Thoughts Update
Added dust particle system but made it surreal, in that the dust particles are red spikes that float through the air, instead of puffs of sand. I'm enjoying experimenting with how to use unity "incorrectly", in order to achieve strange results, which will ultimately assist my project. 

Figuring out how to creatively deal with the edge of the map is difficult. I had the idea of making a sand storm at the edges of the map, but I can't seem to create a dust particle system thick enough. I may need to create many instances of smaller particle systems, as it seems like scaling the shapes of the dust particle systems means that there is too much space for too few partical instances (even when putting the particle count to stupidly high numbers. I don't really see a change).

Reinvigorated my idea of the liquid mirror by creating a portal like vertical water edge to the map. It looks cool, but when in VR, it kind of looks like it's an graphics glitch, and you can still see through the water, which makes the effect less interesting.
![world edge 1](../IMAGES/WolrdEdge1.png)

Do I need to add a Capsule Collider to XR rig?

Added prefab elements to the scene, but they dissapear on play... No sollution so far. Very strange problem...

### 2022-29-01: Progress
Prefabs don't dissapear now.
Added a human character prefab to the scene. Quite astounding how much more immersive the whole scene feels when you have a human figure in view. 
I would like to try and animate him, so that he runs into view, creating this sudden shift of perception in the mind of the user (from fake world, to something a little more tangible...).

![Spooky Character](../IMAGES/SpookyCharacter.png)
Ooooooh yeah. Spooky. Now we're getting somewhere!

Spooky space child should have trail of ethereal childrens choir melodies eminating from him. 
Will also help the user to orietate / become aware of him as he runs around.

[NavMesh Baking Tutorial](https://learn.unity.com/tutorial/navmesh-baking#)

```c#
// Custom Move to Central Tree script

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class MoveTo : MonoBehaviour

{

 public Transform goal;
 // Start is called before the first frame update
 void Start()
 {
 NavMeshAgent agent = GetComponent<NavMeshAgent>();
 agent.destination = goal.position;
 }
  
 // Update is called once per frame
 void Update()
 {}
}

```


Experimenting further with creating an interesting map boundry. 
An endless ocean looks nice, but it's a bit of a basic idea and almost cheap trick to just maroon someone on a desert island...  
Here I'm playing with exaggerated water shader settings:
![world edge 2](../IMAGES/WorldEdge2.png)

I think this is more in the right direction - keeps it more surreal.

### 2022-02-07: VR Chat?
What about uploading the level to VR Chat as a presentational medium?
Would also make delivery and access to the project less troublesome. 

### 2022-02-08: Video Test as Texture Tests
![vid test on sphere](../IMAGES/VidTestOnSphere.png)
Video test on sphere. Super easy. Just need to be conscious of how the video wraps around an object, and design my processing sketches around that.   
I would think that when an object exits the screen, to then redrawn it on the other side will work totally fine - as at least by default, unity is wrapping the video window by width around an object.

![water blend idea](../IMAGES/WaterBlendIdea.png)
Trialed using a rotated water texture to blend the main ocean out in an interesting way. At the intersection with the main ocean it looks nice, but it has a visible edge in the air, which detracts from the effect. Not worth it. 

### 2022-03-07
Imported the processing sketches into the VR world. The sphere sketch "Grow Roots" is working well. I'm happy with the effect.    
![grow roots on sphere](../IMAGES/GrowRoots_OnSphere.jpg)

 # ToDo
 Take low tone out of footstep. 
 Add reverb to windsound(?)
 
 