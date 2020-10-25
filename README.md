# GPD-Win-Max-Hackintosh
Hello, everyone. This is a repository discussing how to install Mac OS Catalina (or newer version) on GPD Win Max.

Thanks to all the volunteers who participated in this project. We have achieved the minimal requirement to use Mac OS on this little machine.

However, there's still some difficult problem need to be solved. We are currently trying to solve them in our leisure time. The progress may very slow. If you are also interested, join us to solve them together.

# What's working
* All USB port works include two type-c port. (TODO: Need to test if USB3 works)
* Both two type-c ports can connect to external type-c to DP or HDMI monitors. I have tested BQNQ 4K monitor without a problem.
* Joystick emulated mouse works.
* Gigabyte ethernet port works.
* The native keyboard works.
* The Intel Iris integrated graphic card works, and the screen can be ratated 270 degrees by using ScreedResX.
# What's working but have flaws 
* Wifi can be drivered by itlwm kext driver, the speed tested at 20Mbps. However the itlwm driver may fail to load occasionally at startup. I have checked the boot log and found nothing. The itlwm is just waiting the hardware to response but the hardware doesn't give response. Maybe this is a hardward conflict or the itlwm driver need to be modified.
* The bluetooth also stop to load occasionally. Maybe the same cause as Wifi. Need to do more test. When bluetooth load successfully. It works perfect without a problem.
* The battery information is readed but can not read capacity. This is due to the _STA function in SSDT. Need to be fixed.
# What's no working and currently trying to solve
* The touchpad is not working - need to modify SSDT, and also maybe need to develop drivers
* The touch screen is not working - the same as touchpad, however someone has already developed a touchscreen driver for GPD P2Max, these two touchscreen is the same.
* There's glitch on screen when entering desktop and shutting down. Tried many fixes and no avail. Maybe this is a Apple framebuffer driver problem, or display edid problem. Or maybe we need to wait 1038ng7 to fix this problem.
* Sleep/Hibernate problem - maybe need to modify SSDT code of CPU
* System may freeze during shutdown - maybe releated to sleep/hibernate problem
* Thunderbolt is not drived - need not modify SSDT and BIOS configuration
* HDMI port is not workding - may be it will not work because Apple does not have hdmi port in this CPU
* iStat Menu can not read the temperatue of CPU


# You may need to modify BIOS settings
## How to modify
* By using ru.efi
* Use setvar by grub
* Other BIOS modify tools
## The options need to be modified
* cfg-lock: Enable -> Disable
* Vt-d: Enable -> DIsable
* Dvmt: 60MB -> 64MB
Other options that the default value is satisfied
* above 4g: default is enable
* csm: default is disabled
* boot mode select: default is efi
