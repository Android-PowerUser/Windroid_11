# Windroid 11

Windroid 11 is a Windows 11 equivalent for Android.



## Goals of Windroid 11

##### No Root access necessary.
##### Windows and Linux Applications works
##### Steam is pre-installed



## Easy install

Download [Termux](https://github.com/termux/termux-app/releases/download/v0.118.0/termux-app_v0.118.0%2Bgithub-debug_arm64-v8a.apk) and [Termux:Widget](https://github.com/termux/termux-widget/releases/download/v0.13.0/termux-widget_v0.13.0%2Bgithub-debug.apk) and install (go in the Android settings and enable install of unknown sources)

Open Termux and copy/paste the follow code:
```
termux-setup-storage
pkg update -y
pkg upgrade -y
pkg i proot p7zip pulseaudio wget -y
# uncomment the following and the third below commands to download on the SD-Card (it will still be installed on the internal memory)
# cd ./storage/external-1/
cd ./sdcard/Download/
wget https://github.com/Android-PowerUser/Windroid_11/releases/download/untagged-eac42edb224f46b7f839/Win11.7z.001 https://github.com/Android-PowerUser/Windroid_11/releases/download/untagged-eac42edb224f46b7f839/Win11.7z.002 https://github.com/Android-PowerUser/Windroid_11/releases/download/untagged-eac42edb224f46b7f839/Win11.7z.003 # link muss beim veröffentlichen aktualisiert werden.
cd

```
press [Enter] (in your keyboard) and then accept the storage permission.


Windroid 11 is based on the Linux kernel that is preinstalled on every Android.
