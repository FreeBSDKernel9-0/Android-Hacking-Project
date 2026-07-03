getprop ro.build.description
getprop ro.build.fingerprint
getprop ro.build.display.id

# Or just use these, to get bits and pieces:
getprop ro.build.version.release
getprop ro.build.version.incremental

 P=$(getprop ro.build.version.security_patch); Y=${P:0:4}; M_NUM=${P:5:2}; D=${P:8:2}
M="January  February March    April    May      June     July     August   SeptemberOctober  November December "
RAW_M=${M:$(( (${M_NUM#0} - 1) * 9 )):9}; set -- $RAW_M; CLEAN_D=$(( ${D#0} ))
case $CLEAN_D in 11|12|13) S=th ;; *) case $(( CLEAN_D % 10 )) in 1) S=st ;; 2) S=nd ;; 3) S=rd ;; *) S=th ;; esac ;; esac
echo "Security Patch Level: $1 ${CLEAN_D}${S}, $Y" # Security patch level stuff, mine's December 1st, 2022.

# How to see your browser info, and to see if it has trust issues:
content query --uri content://settings/secure --projection name:value | grep -i "agent"
 settings get global http_agent # HTTP Agent - mine's just NULL

 # Browser version string (mine's Chromium Blink 108.0.5359.220)
 dumpsys package com.amazon.cloud9 | grep "versionName"
