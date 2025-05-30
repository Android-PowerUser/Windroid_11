# Windroid 11

#### Windroid 11 is a Windows 11 equivalent for Android.

![](https://img.shields.io/github/downloads/Android-PowerUser/Windroid_11/total.svg?label=Windroid%2011%20Downloads)

## Goals of Windroid 11

##### No Root access necessary
##### Windows and Linux Applications work
##### Steam is pre-installed
##### No OS Emulation
##### Usual handling

<img src="https://github.com/Android-PowerUser/Windroid_11/blob/main/Pictures/Screenshot_20230720-114026_VNC%20Viewer.jpg" alt="" width="141"/> <img src="https://github.com/Android-PowerUser/Windroid_11/blob/main/Pictures/Screenshot_20230714-114251_VNC%20Viewer.jpg" alt="" width="141"/>
<img src="https://github.com/Android-PowerUser/Windroid_11/blob/main/Pictures/Screenshot_20230729-151816_VNC%20Viewer.jpg" alt="" width="500"/>
<img src="https://github.com/Android-PowerUser/Windroid_11/blob/main/Pictures/Screenshot_20230729-152025_VNC%20Viewer.jpg" alt="" width="500"/>

## Needed to install

Min. 17 GB storage short term and installed 13 GB.

ARM Processor 64-bit (probably max. 6 year old low budget device)

Stable internet connection

Android 7+ (more reports necessary)

## Easy install

Download the following files: <br>
[Termux.apk](https://github.com/termux/termux-app/releases/download/v0.118.0/termux-app_v0.118.0%2Bgithub-debug_arm64-v8a.apk) <br>
[Termux:Widget.apk](https://github.com/termux/termux-widget/releases/download/v0.13.0/termux-widget_v0.13.0%2Bgithub-debug.apk)
<br>
[VNC Viewer v3.8.0.48261.apk](https://github.com/Android-PowerUser/Windroid_11/releases/download/2023.07.29/VNC.Viewer_3.8.0.48261-arm64.apk) <br>
and install (go in the Android settings and enable install of unknown sources).

#### To download and install it on the internal Storage (Termux Home)

Open Termux and copy/paste the following code:
```
termux-setup-storage
pkg update -y
pkg upgrade -y
pkg i proot p7zip pulseaudio wget -y
cd /sdcard/Download/
wget https://github.com/Android-PowerUser/Windroid_11/releases/download/2023.07.29/Win11.7z.001 https://github.com/Android-PowerUser/Windroid_11/releases/download/2023.07.29/Win11.7z.002 https://github.com/Android-PowerUser/Windroid_11/releases/download/2023.07.29/Win11.7z.003
7z x ./Win11.7z.001 -o/data/data/com.termux/files/home/ # .002,.003 is automatically recognized in the same directory.
cd /data/data/com.termux/files/home/
chmod +x ./Win11
./Win11
```

#### To download to the SD-Card and install it on the internal Storage (Termux Home)

(Installation on the SD-Card is currently not possible and the following method is not fully tested)

Open Termux and copy/paste the following code:
```
termux-setup-storage
pkg update -y
pkg upgrade -y
pkg i proot p7zip pulseaudio wget -y
cd ./storage/external-1
wget https://github.com/Android-PowerUser/Windroid_11/releases/download/2023.07.29/Win11.7z.001 https://github.com/Android-PowerUser/Windroid_11/releases/download/2023.07.29/Win11.7z.002 https://github.com/Android-PowerUser/Windroid_11/releases/download/2023.07.29/Win11.7z.003
7z x ./Win11.7z.001 -o/data/data/com.termux/files/home/ # .002,.003 is automatically recognized in the same directory.
cd /data/data/com.termux/files/home/
chmod +x ./Win11
./Win11
```
#### This is how it continues

Then press [Enter] (in your keyboard) and if you see:
```
It appears that directory '~/storage' already exists.
This script is going to rebuild its structure from
scratch, wiping all dangling files. The actual storage
content IS NOT going to be deleted.

Do you want to continue? (y/n)
```
tap y and press Enter.
Otherwise accept the storage permission. 

During the process you will be asked several times:
```
The default action is to keep your current version.
*** motd (Y/I/N/O/D/Z) [default=N] ?
```
Press N and Enter every times.

Now, if you know you don't have Android 12+ or disabled the Phantom_Process_Killer you can go to the VNC Viewer app during the installation. Otherwise, wait in Termux(!) until Termux has completed the process and therefore you need to disable the Phantom_Process_Killer with [ADB](https://github.com/HardcodedCat/termux-monet#Phantom-Process-Killer) or. Maybe you can use [LADB](https://github.com/Android-PowerUser/Windroid_11/releases/download/2023.07.29/LADB_1.9.1.apk) or alternatives for this without PC. When the ADB connection is running copy/paste the following command:
```
adb shell "/system/bin/device_config put activity_manager max_phantom_processes 2147483647"
```
If you have [Root] you can open with a right swipe in Termux a new session and copy/paste following command:
```
su -c "settings put global settings_enable_monitor_phantom_procs false"
```
You have to do this every time you restart Android.

The Win11.7z is divided into 3 parts. Therefore, do not be irritated if several larger files are downloaded.

Go in the VNC Viewer, click the + and enter :1 in the first line. Leave the second blank and tap "ok". In "picture quality" select "high" otherwise Windroid 11 will only appear in 256 colors! Go back to termux, if not already complete. <br>
<br>
After the completed installation go back to VNC Viewer and press "Connect".  Disable "warn me every time" then press "Ok", enter the password 123456 and confirm.
Complete.
You are viewing Windroid 11!

You can now delete the files downloaded from Termux in the Downloads folder of the internal memory.

For the next start, make sure you have [Termux:Widget](https://github.com/termux/termux-widget/releases/download/v0.13.0/termux-widget_v0.13.0%2Bgithub-debug.apk) installed. Long press on an empty space in your Android home screen and select Widget and find the small icon from the app Termux:Widget, choose Win11 and place it on the home screen. When you press it, go to VNC Viewer and wait a moment until Windroid 11 starts. Alternatively, you can type ```./Win11``` in the terminal and then go to VNC Viewer. You can stop Windroid 11 from within Windroid 11.

## If you get an error while installing
If you no longer have access to your storage due to duplicate termux-setup-storage, try deleting the permissions on the Termux storage and then(!):
```
rm -rf ./storage/
termux-setup-storage
```

If
```
wineserver crashed, please enable coredumps (ulimit -c unlimited) and restart.
```
happened when you open Steam, try:
```
apt install box64-android=0.2.3+20230603.4f1cefe-1
```
in termux Windroid 11.

## Documentation

#### basics

Any shortcut, widget or file in KDE or Dolphin (file manager) is launched with one click.  If you double-click, each application start may be delayed.

#### Steam

Before you start Steam, you can here disable [Steam Guard](https://store.steampowered.com/twofactor/manage) to make signing in smoother and less error prone. Wait at least 2 minutes before trying to start Steam again. The start of an application can take some time.

#### landscape

If you put the screen in landscape mode, you will probably have to move the "portrait.sh" and "rotate to landscape.sh" widgets because they're moving over the icons, because these two are not classic shortcuts, you have to right-click (with 2 fingers  tap) on the widgets and enter "Edit Mode". Then you can move them. The widgets were necessary so that each file could have its own icon.

#### file access

You can manage Windroid 11 file system with the AOSP-Files app or [MiXplorer](https://drive.google.com/drive/u/0/mobile/folders/1BfeK39boriHy-9q76eXLLqbCwfV17-Gv?usp=share_link&pli=1) for example and also Windroid 11 can access internal memory and only SD card in path "/Android/data/com.termux/files/". For example, like Samsung, if you can't see the AOSP-Files app, you can install this [AOSP-Files shortcut app](https://play.google.com/store/apps/details?id=com.marc.files).

With MiXplorer, you must first add a storage, then select Termux in the AOSP-Files app in the hamburger menu. You don't need the shortcut app for that, no matter what brand you have.  Whenever possible, you should manage Windroid 11's file system via Android because it's faster.
Keep in mind that some files are only virtual and some contents of files as well.

#### Always landscape

If you want the screen to start in landscape mode by default, from AOSP-Files App or MiXplorer and a text editor, edit the /usr/local/bin/vncstart in the root-fs of Windroid 11 by reversing the resolution next to vncserver -geometry. Remember that after every modification of an executable you need to restore the execute permission. This can only be done in Termux, if you have not previously started the graphical interface. So press the widget, ignore the error message and copy/paste the following:
```
chmod +x /usr/local/bin/vncstart
```
Now press the widget again and every start of Windroid 11 will then happen in landscape mode.

#### Browser

Logically, no browser is installed in Windroid 11 because you already have one on your Android. You can easily access the internal memory from Windroid 11 for downloads.

#### Install an app

The KDE own app store Discover does not work. This could be because it probably isn't tailored for arm processors. Accordingly, Flatpak and Snap have not yet worked via the graphical user interface (GUI).  Trying to use the Gnome Software Center instead also resulted in an empty App Store. You can install apps with Termux after starting Windroid 11 with:
```
apt install your_application
```
You can use a chatbot to find your exact package name. If you are in a user other than root, you must prepend sudo and grant sudoers permission beforehand. You can then mostly start the application with the exact package name. If your application doesn't exist for arm64 Ubuntu you can try:
```
apt install your_application:i386
```
or
```
apt install your_application:amd64
```
then start your application with
```
box64  Your_application
```
If that doesn't work, try:
```
box86 Your_application
```
If that doesn't work either, try afterwards(!) (for reasons of speed) to download a Windows application via an Android internal browser. Due to an error in KDE, you cannot run the file directly for supposed security reasons. In the arm version of KDE the bug is not fixed yet. You can therefore either try to rename every .exe file extension in Android by default to a different extension and then set the properties for a file in Windroid 11 to run with box64 wine64 and then give the file the execute permission don't forget or give it  in Termux:
```
box64 wine64 path/to/application/from/windroid/from
```
Although wine64 also contains 32 bit libraries, you may need to change the wine prefix to
```
export WINEARCH=win32
export WINEPREFIX=~/.wine86
```
by copy/pasting this in Termux.  After that, press the Win11 Widget again and try again. Remember that you should restore the wineprefix afterwards, otherwise other applications such as Steam will no longer work:
```
export WINEARCH=win64
export WINEPREFIX=~/.wine64
```
Press the Win11 widget again to apply it.

If you download .deb files, they must be for arm processors. If not, unpack the file with MiXplorer for example and locate the ELF file by opening the contained files with a text editor. If the file starts with ELF, run it from within this folder in Windroid 11:
```
box64 /path/to/the/ELF-file
```

Some .deb files do not contain an ELF file. This may mean they need an interpreter like Python. Install Python and pip:
```
apt install python3 python3-pip
```
find the python file and run it:
```
python3 /path/to/file
```
#### Questions

If you have any questions you can ask the [Windroid 11 chatbot](https://poe.com/Windroid_11) fed the documentation of this repo based on Claude 3.7. Or you can use the pre-installed [Shell-GPT](https://github.com/TheR1D/shell_gpt) with which you can have your questions answered directly in Termux by ChatGPT or GPT-4. For this you first have to enter an OpenAI key without spaces directly after the = sign in Windroid 11 in the file /ubuntu-fs/root/.config/shell_gpt/.sgptrc.  You can get that at [OpenAI](https://platform.openai.com/account/api-keys).

#### Contribute

This [group](https://t.me/Windroid_11) is for Windroid 11 developers. Necessary further developments are discussed in the group. For example the ones that are still missing: VirGL, Proton 8.0, Winetricks and faster root version.

If you want to contribute, create a file that can be inserted directly into Windroid 11 with the path specified or replace an existing file.

#### How does it work

This OS runs on the Linux kernel that is preinstalled on every Androidsystem and based on Ubuntu with KDE and many visual and technical adjustments.

Windroid 11 runs via change root (chroot). So applications always find the right directory even though they can't actually access the root directory. Also, many applications need root privileges to install applications, for example, because they don't know that they don't actually need root privileges here.  So the user ID 0 must also be simulated. Which leads the applications to believe they have root access. Although they don't need root privileges anyway. But they do their job. This requires process trace, which is a kernel function found in almost all Unix-like operating systems. Unfortunately this is very slow, but without a UID you can't even get the graphical interface to work. In addition, with PRoot process trace is always activated anyway, whether it is needed or not. These and more features are all available in PRoot.  The P stands for process trace and the rest for chroot. In order for Windroid 11 to start, a file containing the PRoot options is executed. It is located in the Termux home directory (/data/data/com.termux/files/home/Win11 and /data/data/com.termux/files/home/.shortcuts/Win11). You can edit the files with a text editor in such a way that VNC Viewer is opened immediately when the widget is started. How to do this is in the files. Note that VNC Viewer may start earlier than VNC Server has established the connection. Then try to connect to the desktop again in VNC Viewer.

#### You can [fund](https://paypal.me/MatthiasExner98?country.x=DE&locale.x=de_DE) the Windroid 11 project.
[PayPal donation](https://www.paypal.com/webapps/billing/plans/subscribe?plan_id=P-4C5837267N8919331MTCOQWA)

##### declaration
Don't expect miracles, because Windroid 11 is in the early stages of development.
Not related with Microsoft or Valve Corporation!
In this OS @ptitSeb's Box64/Box86 was used.
Icons by @yeyushengfan258

##### Other
[Screen Operator](https://github.com/Android-PowerUser/Screen_Operator/) is an Android app that automatically operate the Screen with AI.
