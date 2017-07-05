+++
Categories = ["Android","Phone"]
Description = ""
Tags = ["Odin","samsung bricked"]
date = "2017-06-06T12:18:12+10:00"
menu = "main"
title = "JOdin and Heimdal on MacOsX"

+++
[Home](http://localhost:1313/)
## Installation on Mac

You know that feeling ,when you tinker with your phone , root it ,install new roms and try out new recovery methods.
and then the moment of truth ...you restart the phone and its stuck at the dreaded


<span style="color:red"> **Downloading ...Do not turn off target!!** </span>


You try the usual key combinations


<span style="color:blue"> **VOLUME DOWN + HOME + POWER.** </span>



All at the same time ,wait for a few seconds and ....it returns to the same screen


<span style="color:red"> **Downloading ...Do not turn off target!!** </span>



The way I have managed to get out of this situation on a MAC OSX is by googling and finally using the below software combinations

1. Update Java to the latest
2. Use Firefox browser ( at the time of testing the java app didn't work with Chrome)
3. Heimdall-frontend application
4. JOdin Application

### Download Links

- [JOdin Application Download Link] (https://forum.xda-developers.com/devdb/project/dl/?id=20803&task=get)
- [Heimdall-frontend Download Link] (https://bitbucket.org/benjamin_dobell/heimdall/downloads/Heimdall-1.4.1-Unofficial-Signed.dmg)


### Heimdall-frontend

Heimdall-frontend details can be found here (http://glassechidna.com.au/heimdall/)
 Pre-requisites
   - On Mac update the security to allow installation of third party apps
   - Use the [Heimdall-1.4.1-Unofficial-Signed.dmg] (https://bitbucket.org/benjamin_dobell/heimdall/downloads/Heimdall-1.4.1-Unofficial-Signed.dmg) as the other versions throw an error during installation

##### How to use the app

1. Ensure the phone has 60% battery
2. Switch on the phone by pressing the following the key combinations
<span style="color:blue"> **VOLUME DOWN + HOME + POWER.** </span>
3. The phone should now be in the below mode
<span style="color:red"> **Downloading ...Do not turn off target!!** </span>
4. Connect the Phone to the usb port
5. Open the Heimdal-fronend app
   - Go to Utilites
   - Click on Detect
   - Click on PIT
   - select a location to download and store the PIT file
   - Name the file such that it is easy to identify
6. Once the PIT file is downloaded you can now close the Heimdal app.



### JOdin

JOdin Application details can be found at this link (https://forum.xda-developers.com/showthread.php?t=2598203)

On my MacOsX its located in Downloads

```
[~/Downloads/JOdin3CASUAL-r1142-dist]$ tree -L 1
.
├── JOdin3CASUAL
├── app
└── runtime
```

##### How to use JOdin

1. First extract the JOdin3CASUAL-r1142 file
2. Go to the location where you just extracgted the files
3. The folder structure for Jodin should look like the below
```
$ cd ~/Downloads/JOdin3CASUAL-r1142-dist/
$ cd app

```
Contents of the app folder

- package.cfg
- lib
- JOdin3CASUAL.jar
```

4. To start the app double click the <span style="color:red"> JOdin3CASUAL.jar </span>
5. MacOsX will open the .jar file using the Jar launcher

6. Once the JOdin app is running
7. Ensure the Phone is detected you will see a green box on the left hand side off the app <span style="color:green"> | Connected | </span>
8. Once the status of the Phone is shown as connected ,browse to the location you downloaded the PIT file from the Heimdal app
9. Update the PIT to point to the above location
10. Click on the PDA and browse to the recovery file you want to patch ( in my case it I patched twrp-3.0.2-0-t03g.img.tar) the file has to be in .tar format
11. finally click Start
12. If everything goes well your phone will boot into recovery mode.
13. you can then install your Custom Roms.
