# "Shortcut" - First Term Project WS2122 - TJ Schaeuble

![tree planet](IMAGES/ShortcutTreePlanet.png)

## Introduction
Virtual reality provides an opportunity to experience digital artworks in new ways. But the VR environment in this sense should not mimic the paradigms of art consumption we know and trust by rebuilding art galleries and viewing cinemas as we know them. We should be more imaginative. "Shortcut" is an exploration of this new opportunity. It offers a space between reality and dreamscape, where curiosity and surrealism are integrated into the act of viewing graphical artworks and listening to music. 

[Here you can watch a demonstration of the project on Youtube.](https://youtu.be/iWeQOEhx4YA)


## Navigation
This repository includes:
- Documentation of Processing sketch designs
- Documentation of Unity development
- Development log of Unity development
- Supporting imagery and gifs for documentation

## Running The Project
The Unity files and VR build can be found in OneDrive [here](https://filmuniversitaetde-my.sharepoint.com/:f:/g/personal/tillman_j_schaeuble_filmuniversitaet_de/ErAAuJxWeR5KvFu1e_77fjwB3Hp5Lk1BQD79tmiCEfk4fA?e=njEhRY). There are three sets of files and three options to account for different scenarios. 

### Opening The Project or Viewing Project Files
 The folder titled *VRShortcut-Master* is the full Unity project folder. You can download this project folder and open it with Unity. The project is however configured for use with a HP Reverb G2 (ie, windows mixed reality setup). I have not been able to test with another headset to see if it works out of the box, but it is somewhat likely as it was built using the OpenXR unity plugin, which is cross platform for VR headsets.    
 Secondarily, this folder also allows you to view the project files and structure online / locally without having to open anything in Unity.

## Opening The Project - Package Install for VR Capability Required
In case OneDrive corrupts files on upload / download, and you would still like to open the project in Unity, I've also exported a .unitypackage file. You will be able to import this into a new 3D unity scene, navigate around and assess scripts, setups and content. It will however not be possible to run the scene in VR without installing extra packages and configuring the project settings. 

To import the package into Unity, follow these steps: 
Note: To ensure best compatibility, use Unity version 2020.3.30f1.

1. Download [Unity Hub](https://unity.com/unity-hub) 
2. Download the VRShortcut_1.0_Finished.unitypackage found in [OneDrive](https://filmuniversitaetde-my.sharepoint.com/:f:/g/personal/tillman_j_schaeuble_filmuniversitaet_de/ErAAuJxWeR5KvFu1e_77fjwB3Hp5Lk1BQD79tmiCEfk4fA?e=njEhRY)
3. Open Unity Hub and install Unity version 2020.3.30f1
4. Create a new Unity Project
5. When prompted, select the "3D template" 
6. Navigate to the assets/scenes/ folder in the hierarchy
7. Right click in empty space and select 'import package'
8. Select the unitypackage downloaded in step 2. 

Unity will then import all assets and scripts needed. You will get warning notifying that extra packages need to be installed, but this is only necessary if you would like to view through VR. 
