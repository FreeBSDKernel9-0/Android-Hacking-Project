getprop ro.build.description
getprop ro.build.fingerprint
getprop ro.build.display.id

# Or just use these, to get bits and pieces:
getprop ro.build.version.release
getprop ro.build.version.incremental

# How to see your browser info, and to see if it has trust issues:
content query --uri content://settings/secure --projection name:value | grep -i "agent"
 settings get global http_agent # HTTP Agent - mine's just NULL

 # Browser version string (mine's Chromium Blink 108.0.5359.220)
 dumpsys package com.amazon.cloud9 | grep "versionName"
