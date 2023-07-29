# Windroid 11

Windroid 11 is a Windows 11 equivalent for Android.



## Goals of Windroid 11

##### No Emulation
##### No Root access necessary
##### Windows and Linux Applications work
##### Steam is pre-installed
##### Usual handling


## Needed to install

Min. 13-17 GB internal storage depending whether you have an SD card and your choose in the code (see below).

ARM Prozessor 64-bit (probably max. 6 year old low budget device)

Android 7+ (more reports necessary)

## Easy install

Download
[Termux.apk](https://github.com/termux/termux-app/releases/download/v0.118.0/termux-app_v0.118.0%2Bgithub-debug_arm64-v8a.apk) and 
[Termux:Widget.apk](https://github.com/termux/termux-widget/releases/download/v0.13.0/termux-widget_v0.13.0%2Bgithub-debug.apk)
and [VNC Viewer v3.8.0.48261.apk](https://github.com/Android-PowerUser/Windroid_11/releases/download/untagged-3d8afee65340ab832c3e/VNC.Viewer_3.8.0.48261-arm64.apk)
and install (go in the Android settings and enable install of unknown sources)

Open Termux and copy/paste the follow code:
```
termux-setup-storage
pkg update -y
pkg upgrade -y
pkg i proot p7zip pulseaudio wget -y
# swap the "#" in the next line with the next one after that to download on the SD-Card (it will still be installed on the internal memory)
# cd ./storage/external-1/
cd ./sdcard/Download/
wget https://github.com/Android-PowerUser/Windroid_11/releases/download/untagged-eac42edb224f46b7f839/Win11.7z.001 https://github.com/Android-PowerUser/Windroid_11/releases/download/untagged-eac42edb224f46b7f839/Win11.7z.002 https://github.com/Android-PowerUser/Windroid_11/releases/download/untagged-eac42edb224f46b7f839/Win11.7z.003 # link muss beim veröffentlichen aktualisiert werden.
7z x ./Win11.7z.001 # .002,.003 is automatically recognized in the same directory.
cd /data/data/com.termux/files/home/
chmod +x ./Win11
./Win11

```
Then press [Enter] (in your keyboard) and if you see:
```
It appears that directory '~/storage' already exists.
This script is going to rebuild its structure from
scratch, wiping all dangling files. The actual storage
content IS NOT going to be deleted.

Do you want to continue? (y/n)
```
tap n and press Enter.
Otherwise accept the storage permission. If you know you don't have Android 12+ or disabled Phantom_Process_Killer you can go to the VNC Viewer app during the installation. Otherwise, wait in Termux(!) until Termux has completed the process. In the VNC Viewer, click the + and enter :1 in the first line.  Leave the second blank and tap "ok". In "picture quality" select "high" otherwise Windroid 11 will only appear in 256 colors. Go back to termux, if not already complete. Wait for the installation to finish and go back to VNC Viewer and press "Connect".  Disable "warn me every time" then press "Ok", enter the password 123456 and confirm.
Complete.
You are viewing Windroid 11!

For the next start, long press on an empty space in your Android home screen and select Widget and find a small icon from the app Termux:Widget and place it on the home screen.  When you press it, Windroid 11 will start

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
in termux Windroid 11 .

## Documentation
##### A complete documentation is coming soon.
It is based on the Linux kernel that is preinstalled on every Androidsystem.
#### [Go fund Windroid 11](https://paypal.me/MatthiasExner98?country.x=DE&locale.x=de_DE)
Free of charge. In absence of more sponsors I'm forced to give up the time intensive enhancements for more paid jobs.

###### declaration
Windroid 11 is in the early stages of development.
Don't expect miracles.
Not related with Microsoft or Valve Corporation!
In this OS @ptitSeb's Box64/Box86 was used.
Icons by @yeyushengfan258
