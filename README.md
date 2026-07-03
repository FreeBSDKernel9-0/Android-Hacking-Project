That wasn't that useful, just basic, and I don't have another thing.

Hey, guys.
I'm back, with a new tinkering device! 
(Samsung Galaxy A2 Core, Dark Grey, 8GB storage, expandable by SD card,
1GB RAM, running on a reflashed INS firmware, of Android 8.1.0 - Oreo Go Edition.)

And by the way, I had to reflash, because the phone was from Thailand, and would default back to Thai on reset, 
and also, the THL firmware it originally had, was region-locked, and had way more bloat than the INS version. 

Anyway, enough background. Let's get tinkering with an Android device!

So, yeah, here's the stuff I managed to play with off-scene:


Unlocked the bootloader, after flashing the INS firmware.

Installed Termux.

Compiled Lua 5.4.6 from source, after installing normally failed, like, 5 times.

Currently prototyping a "Call Lua from WebKit" thing, haven't tested.


Sorry I haven't updated this, lol. 'Member how I was talking about hacking a M8 Game Stick? Nope. Even though it runs U-Boot and a stripped down Linux, there's no way to get a shell, so nah. So, final plan: Buy a remote for that Fire Stick, get ADB running, and do my research. You will see scripts published here soon, lol, so check that out.

(Kamikiri failed, fought with FireISO and installing Kamikiri for 2 and a half hours, it failed, lol.)

So, gonna work with primarily older Android devices (KitKat to Pie), and see how that goes. Maybe work with Red Velvet Cake in the future, lol, when I get a Pixel XL (when I get a stable job and cash.)

Bye for now, FreeBSDKernel9-0.

Oh, hey. So, update, getting a Fire Stick remote tomorrow, so I don't have to buy one. But, anyway, I'm working on ideas, but I don't have any yet, since I don't 
have file paths and shit, but when I get into the file paths, and other stuff, like API's (for custom pop-up's, notifications, yada, yada, yada), I will FINALLY
start making scripts. Also, I said this in my old repo, but I need to add a thing. 

I will have seperate folders, with guides for where to go and stuff, so that's cool. But yeah, folders, with my scripts.
They will be MKSH, though (sorry, Linux bros!), because I only know Debian Bash, and plus, I primarily tinker with Android stuff, so yeah, cool.

Anyway, see ya,
FreeBSDKernel9-0.

So that last C thing was too basic, so I'm not even gonna bother writing C. I'd rather read and explain C, like what Low Level does, since I can read most languages, including C, just not write them.
But yeah, got a remote, which paired first try, but no WiFi on it (entirely my fault).

But yeah, the person that gave me the remote said they'll give me a new Fire Stick if mine doesn't work, so my thing (I didn't announce the name previously) Operation: Dumb ADB Tomfoolery isn't dead. But anyway, lemme explain what happened: 

I cracked the WiFi/Bluetooth chip (MediaTek 67739 BSN) when pulling the shield off without heat, in the top-left corner, so yeah, amazing.
That's why the remote paired first try, but the WiFi kept dropping. So, that's fun, I guess.

Anyway, I'm out,
FreeBSDKernel9-0.

So yeah, update, that stick died. I was messing around and found a set of pins about a millimeter apart from the CPU (I've no clue, MediaTek ARM something something?) arranged in a colon pattern, and they were CLK and DAT. So I then found out by shorting DAT with the end of a paperclip, the whole stick reboots. Thought that was cool, and kept doing it, then realized I scraped the pin off the board, and when I tried to turn it on again, it wouldn't boot. 

But yeah, cracked WiFi chip anyway, so it was a brick, anyway. That's kinda annoying, since it might've been hackable with Kamikiri, considering how long it wasn't updated for. Welp, never mind. Anyway, posted my first release, ro-debuggable.sh . And you'll see this repo get wayyy more releases than some of my others, since MKSH is a language I reliably know (still learnng, but it's pretty simple) so I don't need to wait for devs, I can just do it myself.

Anyway, bye,
FreeBSDKernel9-0.

So, hey guys. Got that Fire Stick.
Here's the specs:
Fire TV Stick 2nd Gen (internally code named 'tank')
Firmare version: Fire OS 5.2.9.5
Build ID: LVY48F
What it's based on: Android Lollipop (5.1.1)
Made in: Luxembourg
Assembled in: China
Model No: LY73PR

And spoilers, I already found a wide-open Privelege Leak.

Later, 
FreeBSDKernel9-0.
