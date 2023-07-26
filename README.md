# Windroid 11

Windroid 11 is a Windows 11 equivalent for Android.



## Goals of Windroid 11

##### No Root access necessary.
##### Windows and Linux Applications works
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
and [VNC Viewer v3.8.0.48261.apk](https://www.apkmirror.com/wp-content/themes/APKMirror/download.php?id=4163203&key=9219eb9fc7670432b986e98dd8747b0cbebe7155)
and install (go in the Android settings and enable install of unknown sources)

Open Termux and copy/paste the follow code:
```
termux-setup-storage
pkg update -y
pkg upgrade -y
pkg i proot p7zip pulseaudio wget -y
# swap the "#" in the next line
with the next one after that to
download on the SD-Card (it will
still be installed on the internal
memory)
# cd ./storage/external-1/
cd ./sdcard/Download/
wget https://github.com/Android-PowerUser/Windroid_11/releases/download/untagged-eac42edb224f46b7f839/Win11.7z.001 https://github.com/Android-PowerUser/Windroid_11/releases/download/untagged-eac42edb224f46b7f839/Win11.7z.002 https://github.com/Android-PowerUser/Windroid_11/releases/download/untagged-eac42edb224f46b7f839/Win11.7z.003 # link muss beim veröffentlichen aktualisiert werden.
7z x ./Win11.7z.001 # .002,.003 is automatically recognized in the same directory.
cd /data/data/com.termux/files/home/
chmod +x ./Win11
./Win11

```
Then press [Enter] (in your keyboard) and then accept the storage permission. If you know you don't have Android 12 you can go to the VNC Viewer app during the installation. Otherwise, wait in Termux until Termux has completed the process. In the VNC Viewer, click the + and enter :1 in the first line.  Leave the second blank and tap "ok". In "picture quality" select "high" otherwise Windroid 11 will only appear in 256 colors. Go back to termux. Wait for the installation to finish and go back to VNC Viewer and press "Connect".  Disable "warn me every time" then press "Ok", enter the password 123456 and confirm.
Complete.
You are viewing Windroid 11!

## Documentation
Windroid 11 is yet in the beta phase.
It is based on the Linux kernel that is preinstalled on every Androidsystem.
