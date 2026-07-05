# Start the Network settings (Amazon will re-route this to their Network tab, rather than Android's)
am start -a android.settings.WIFI_SETTINGS

# FAILSAFE IN CASE THE TOP NETWORK IS YOURS, AND ALREADY CONNECTED (lol)
if ip route | grep -q "wlan0"; then
    input keyevent 20 && input keyevent 66
else
    input keyevent 61 && input keyevent 66
fi

# Use input text instead
input text "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$4"

# Go to the 'Submit' button
input keyevent 20
sleep 5
input keyevent 20
sleep 5
input keyevent 22
sleep 5
input keyevent 66
