# Start the Network settings (Amazon will re-route this to their Network tab, rather than Android's)
am start -a android.settings.WIFI_SETTINGS
sleep 2.5

# FAILSAFE IN CASE THE TOP NETWORK IS YOURS, AND ALREADY CONNECTED (lol)
if ip route | grep -q "wlan0"; then
    input keyevent 20; sleep 0.2; input keyevent 66
else
    input keyevent 61; sleep 0.2; input keyevent 66
fi
sleep 2.0

# Manually enter the string (Bunch of 'A', '%', and '$' signs)
input keyevent 20; sleep 0.1
input keyevent 20; sleep 0.1
input keyevent 20; sleep 0.1
input keyevent 66 # Manually go down 3 letters, to Caps Lock, and hit Enter
sleep 0.5

# Go up to 'A'
input keyevent 19; sleep 0.1
input keyevent 19; sleep 0.1
input keyevent 19; sleep 0.5

# Hit Enter a bunch, until we hit the normal character limit (We have to do this manually, at least in my case)
for i in {1..35}; do
    input keyevent 66
    sleep 0.05
done
sleep 0.5

# Go down to the 'Special Characters' section, and hit Enter (This is the detonator where the actual crash is gonna happen)
input keyevent 20; sleep 0.1
input keyevent 20; sleep 0.1
input keyevent 20; sleep 0.1
input keyevent 22; sleep 0.1
input keyevent 66; sleep 0.5

# Once on there, go Up + Right and hit Enter a bunch (string of '$')
input keyevent 19; sleep 0.1
input keyevent 22; sleep 0.5

for i in {1..36}; do
    input keyevent 66
    sleep 0.05
done
sleep 0.5

# Hit Left + Up + Up and hit Enter a bunch (string of "")
input keyevent 21; sleep 0.1
input keyevent 19; sleep 0.1
input keyevent 19; sleep 0.5

for i in {1..22}; do
    input keyevent 66
    sleep 0.05
done
sleep 0.5

# Hit Right + Enter a bunch (string of '%'), then hit Left to make the next part easier
input keyevent 22; sleep 0.5

for i in {1..22}; do
    input keyevent 66
    sleep 0.05
done
sleep 0.5

input keyevent 21; sleep 0.5

# One last string of '$' (this makes the exploit work)
for i in {1..36}; do
    input keyevent 66
    sleep 0.05
done
sleep 0.5

# Hit 'Submit' to trigger the error, and (if we filled the memory up enough) Home Screen Kick
input keyevent 20; sleep 0.1
input keyevent 22; sleep 0.1
input keyevent 22; sleep 0.1
input keyevent 22; sleep 0.1
input keyevent 20; sleep 0.2
input keyevent 66
