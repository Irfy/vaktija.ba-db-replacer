#!/bin/sh
apktool b ba.vaktija.android
echo android | jarsigner -tsa http://timestamp.digicert.com ba.vaktija.android/dist/ba.vaktija.android.apk android
#cp -v ba.vaktija.android/dist/ba.vaktija.android.apk /cygdrive/c/Users/root/Google\ Drive/ba.vaktija.android.irfan.apk
adb uninstall ba.vaktija.android.irfan
adb install ba.vaktija.android/dist/ba.vaktija.android.apk
