#!/bin/bash

PATH="/home/kirill/Android/Sdk/ndk-bundle:$PATH"
PATH="/home/kirill/Android/Sdk/platform-tools/:$PATH"

ndk-build clean
ndk-build

adb shell "rm /data/tmp/emojicodec"
adb shell "rm /data/tmp/output.txt"
adb push libs/x86/emojicodec /data/tmp/emojicodec
adb shell "chmod 777 /data/tmp/emojicodec"
adb shell "/data/tmp/emojicodec > /data/tmp/output.txt"
sleep 1
adb shell "cat /data/tmp/output.txt"
