#! /system/bin/mksh

pm list packages

VERSION=$(getprop ro.build.version.release)

echo "Amazon's Android version: $VERSION"

ps | grep root

(echo "The shell guy finally posted a script!")
