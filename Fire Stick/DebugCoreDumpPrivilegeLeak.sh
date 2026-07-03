setprop debug.log.coredump.enable 1 # Set the flag to 1 (enabled)
getprop debug.log.coredump.enable 1 # The Privilege Leak worke, so this returns 1 (enabled)

# Set the bit to 0 (disabled)
setprop debug.log.coredump.enable 0
getprop debug.log.coredump.enable 0

# Yep, that's how easy a Privilege Leak is on Android 5.1.1 Lollipop
