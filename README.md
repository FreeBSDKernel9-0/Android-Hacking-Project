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

So, gonna work with primarily older Android devices (Pie to KitKat), and see how that goes. Maybe work with Red Velvet Cake in the future, lol, when I get a Pixel XL (when I get a stable job and cash.)

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
