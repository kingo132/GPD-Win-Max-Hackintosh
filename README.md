[![](https://img.shields.io/badge/Gitter%20Ice%20Lake-Chat-informational?style=flat&logo=gitter&logoColor=white&color=ed1965)](https://gitter.im/ICE-LAKE-HACKINTOSH-DEVELOPMENT/community)

# GPD-Win-Max-Hackintosh
Hello, everyone. This is a repository discussing about how to install Mac OS Catalina (or newer version) on GPD Win Max.

Thanks to all the volunteers who participated in this project. I don't have all their names, but without their effect, this repository won't be possible.

These are all the names I know.

* One big guy for the initial version of EFI
* Another big guy for working out the intel graphic driver
* [@THEDVIOUS1](https://github.com/THEDEVIOUS1) for helping me work out the touch screen & touchpad driver
* [@lazd](https://github.com/lazd/VoodooI2CGoodix) for the Goodix TouchScreen driver
* [@Azkali](https://github.com/Azkali) for providing p2max EFI for reference
* [@PeterCxy](https://github.com/PeterCxy) for giving some clues about how to fix some initialize problem of the touch screen driver
* All the friend in a QQ group for providing many information and many improvment and doing many tests

Great thanks to everyone who participated in this project.

# Changelog

## 20240118
1. Upgraded to Venture 13.6.3

## 20211002
1. Fixed boot screen glitch

## 20210515
1. Support "Smartisan TNT go" external display and type cover. Fixed the keyboard and trackpad issue. Added fn keymaps. You can install [eqMac](https://eqmac.app/) in order to control the volume of this external display, also it will works with all other DP external displays.

## 20210411
1. Added driver 360controller's System Preferences plugin of the built-in joystick, you may need to enable the "Pretend to be an Xbox 360 Controller" option to get the controller to work in some games. Just put the plugin builtin-joystick/Pref360Control.prefPane into ~/Library/PreferencePanes and you are all set. Note: I only tested this plugin under Catalina. I don't know if it works under BigSur. By the way, this driver's preference pane is very well polished. I'm loving it.
![8E65D09BA8301303CFAF6D688784E052](https://user-images.githubusercontent.com/46492291/114335073-85ecb800-9b7e-11eb-821e-df54a8635f65.jpg)
## 20210410
1. Fixed the touch event of external display's touchscreen rotated 270 degrees problem, by does not rotate the touch event at all (it's not a very good fix but it works under my usage ...), because the built-in screen is rotated 270 degrees and VoodooI2CHID did not consider this condition.
2. Fixed blue screen problem when booting windows 10 from Opencore

## 20210404
1. Finally fixed the "EL[0] was invalidated!!" crash by adding the igfxfw=2 boot argument. Thanks to [@m0d16l14n1](https://github.com/m0d16l14n1) for providing this information. I haven't encountered this panic for days.
2. Now the built-in joystick works, thanks to the project https://github.com/360Controller/360Controller. I have tested it in OpenEmu, steam, and Apple Arcade (tested the game shinsekai), it works very well. However, this driver says it does not support BigSur, and I only tested in Catalina, so I don't know if it works in BigSur. NOTE: You must switch the joystick mode on (push the joystick switch on the left of winmax to up) before you boot into macOS, otherwise the driver will not load. If you want to switch joystick mode when macOS is running, you may need to put 360controller.kext to /S/L/E and rebuild the kext cache. I don't want to do this. So I'm leaving it as it is.
3. Upgraded AirportItlwm driver, the speed at some conditions of 5Ghz wifi seems better, but I also encountered some connection problems and performance slowdown when using 2.4Ghz wifi.

## 20201226
1. Fixed battery remain time
2. Upgraded AirportItlwm driver
3. Modified VoodooI2CGoodix driver, now you can use the touchscreen like this
   1. One finger drag set to scroll by default, one finger scroll direction is opposite to trackpad by default, so you need to uncheck Natural Scroll direction in settings
   2. One finger long press to act as the original drag
   3. Double-tap is fixed
   4. If you prefer the original VoodooI2CGoodix driver, please use VoodooI2CGoodix.orig.kext in the efi/oc/drivers folder. You can find the modified code of this driver here https://github.com/kingo132/VoodooI2CGoodix.

## 20201219
1. Upgrade opencore to 0.6.4
2. Upgrade other drivers
3. Fixed goodix touch screen driver may fail to load at boot, now the driver can be load at every boot without problem

# WinMax running Catalina 10.5.7
![image](https://github.com/kingo132/GPD-Win-Max-Hackintosh/blob/main/photos/screenshot.png)

# The specification of Win Max
```
CPU Brand Name:      Intel(R) Core(TM) i5-1035G7 CPU @ 1.20GHz, Max Turbo 3.70GHz
CPU Code Name:       Ice Lake-U
Motherboard Model:   GPD G1619-01
Memory Capacity:     16 GBytes @ 1866.7 MHz
Memory Devices:      2
Video Chipset:       Intel Iris Plus Graphics 940
Built-in Monitor:    TV080WUM-NL0, 800x1280 resolution, MIPI Interface, from Boe Technology
Touch Screen:        GoodixTouchDriver Device
Touch Pad:           I2C HID Device
Audio Adapter:       RealTek ALC269
Wireless Adapter:    Intel(R) Wi-Fi 6 AX200 160MHz
Ethernet Adapter:    RealTek Semiconductor RTL8168/8111 PCI-E Gigabit Ethernet NIC
Bluetooth Device:    Intel Bluetooth Device
Battery:             SR Real Battery - Intel SR 1 - 11.540 V / 57000 mWh
```
# What's working
* All USB port works include two type-c port. (USB3 works, speed is tested at 300MB/s read&write)
* Both two type-c ports can connect to external type-c to DP or HDMI monitors. I have tested BENQ 4K monitor (4k@60hz) without any problem.
* Joystick emulated mouse works.
* Gigabyte ethernet port works.
* The built-in keyboard works.
* The Intel Iris integrated graphic card works, and the screen can be rotated 270 degrees by using ScreenResX or RDM. You can also hold Command+Option or Win+Alt before clicking Displays item in System Preferences to enable the rotate option if you don't want to install any additional software.
* The speaker works, 3.5mm audio port also works.
* Battery indicator works.
* Sleep works perfectly.
* Touch screen works
* Build-in Game Controller works
# What's working but have flaws 
* The built-in sd card reader works, but it may cause iStat menu to continuously print error logs like this.
```
deleted fsctl error: Inappropriate ioctl for device, using HARDCODED desired threshold ...
```
The only solution I found is to disable iStat menu disk monitor or do not insert or mount any sd card.
* ~~iStat menu may freeze during boot time, may be related to some hardware or driver issue. The most suspicious is itlwm.~~
* Trackpad works, but it may fail randomly at some boots. Maybe it was the problem of VoodooI2C or I2C timing problem or kext loading race condition problem.
* There are glitches on the screen when entering the desktop and shutting down.
* Thunderbolt works but does not support hotplug. Maybe need to modify SSDT to adjust it to satisfy what mac os needs.
* ~~System may randomly crash with panic: "EL[0] was invalidated!!"@icl/sched5/IGHardeareCommandStreamer.cpp:64. or "Unexpected context status buffer entry"@icl/sched5/IGHardwareCommandStreamer.cpp:71. Easpically when connected to a 4k or 5k external display, or playing 3d games, or doing some other graphic heavy jobs. This is an IGPU driver problem. Currently don't know how to fix this. Have tried platform/device id 01005D8A/538A0000 and 0000528A/528A0100. Both will crash. It seems platform/device id 01005C8A/5C8A0000 and SMBIOS MacbookAir9,1 is the most stable combo.~~
* Type-c USB3.0 HUB/Adapter may cause all USB in the system to fail if you plugged USB2.0 devices on it. Currently don't know the cause and don't know how to fix this. Both will fail before and after USB Customization.
  * Related report: https://gadgets.ndtv.com/laptops/news/apple-macbook-pro-air-2020-usb-2-0-connectivity-issues-user-reports-2248781
  * Related user feedback: https://discussions.apple.com/thread/251356598 
  * Workaround: Do not plug any USB2.0 device to USB3.0 Type-c HUB/Adapter. Plug them into a USB2.0 hub or plug directly into winmax's USB3 port.
# What's not working
* HDMI port is not working
* HDMI audio is not working, technically, all the sound of external display is not working, includes type-c or display port.
  * Besides the problem that icelake does not have native HDMI. Maybe this is the reason why type-c to Displayport also has no audio output to external display. See [This Issue](https://github.com/acidanthera/bugtracker/issues/1616) for more detail.
![image](https://user-images.githubusercontent.com/46492291/116030179-924c3700-a68d-11eb-92a3-b206fc454b89.png)

# Extend the life of SD card
## Disable SD card auto mount
Get UUID by using this command
```
diskutil info /Volumes/volume name
```
Add this entry to /etc/fstab. Note to change exfat to the filesystem type of your tf card. I'm assuming it is exfat.
```
UUID=<UUID get from piror command>   none  exfat  rw,noauto
```
## Prevent spotlight from indexing the SD card
```
cd /Volumes/yourtfcard
touch .metadata_never_index
```

# For those who want to upgrade the kext inside this EFI
Here are some kexts that you can not upgrade because I have made my modifications, it will cause the component to stop working if you replaced my kext.

* 360Controller.kext: I modified some bugs related to WinMax's built-in controller
* AppleALC.kext: I modified the patch code of icelake device
* VoodooI2CGoodix.kext: I modified bugs and added some functionalities
* VoodooI2CHID.kext: I modified some bugs related to WinMax's trackpad and the external display's touchscreen

# Modify BIOS settings
Note 1: We are testing under BIOS version 1.11

Note 2: This EFI can work without modifying bios setting, so this step is not a must-do step, you can skip it if you don't want to bother to dig such deep.
## How to modify
* Method 1: (the one I'm using) Modify BIOS varialbes using ru.efi. I have uploaded my BIOS dump file [winmax_bios_dump.txt](https://github.com/kingo132/GPD-Win-Max-Hackintosh/blob/main/winmax_bios_dump.txt). You can find offset in this file and modify it using ru.efi. Try reading this guide. [toturial](https://nstarke.github.io/0037-modifying-bios-using-ru-efi.html)
* Method 2: (the most convenient one if you did the initial job) Flash a customized BIOS by following this video toturial. [toturial](https://www.bilibili.com/video/BV1SK411G7wy)
* Method 3: (havn't tested) Use setvar of grub to modify BIOS veriables. Check this [tutorial](https://github.com/Azkali/GPD-P2-MAX-Hackintosh/issues/16#issuecomment-565882180)
## The options need to be modified
* cfg-lock: Enable -> Disable
* Vt-d: Enable -> Disable
* Dvmt: 60MB -> 64MB
* EHCI Hand-off: Disable -> Enable

Other options that the default value is satisfied
* above 4g: default is enabled
* csm: default is disabled
* boot mode select: default is efi
* XHCI Hand-off: default is enabled

# Other useful stuff
* https://github.com/p3k163/GPD-Win-Max-3733MHz-Unlocked-BIOS
* https://github.com/Xmingbai/AMD-GPU-Performance-optimization
* https://github.com/dortania/Getting-Started-With-ACPI
* https://github.com/RehabMan/OS-X-ACPI-Debug
* https://dortania.github.io/OpenCore-Install-Guide/config-laptop.plist/icelake.html#platforminfo

# Related issues
* https://github.com/360Controller/360Controller/issues/1140
* https://github.com/acidanthera/bugtracker/issues/1343
* https://github.com/acidanthera/bugtracker/issues/1283

# Other icelake hackintosh for references
## Laptops
* https://github.com/Lorys89/DELL_VOSTRO_5401-ICE-LAKE
* https://github.com/m0d16l14n1/Hasee-KingBook-X57S1
* https://github.com/Ardentwheel/OpenCore-Hasee-X57S1
* https://github.com/leon0410898/XPS13-9300-hackintosh
* https://github.com/k-sym/Razer_Blade_Stealth_Late_2019_GTX_Hackintosh
* https://github.com/lulujyc/OneMix3Pro-OpenCore
* https://github.com/hackintosh-efi/intel-nuc10
* https://github.com/DagerDW/Lenovo-ideapad-3-14iil05-Hackintosh
* https://github.com/ghayyem/acer_swift_5_1065g7 ⭐️
* https://github.com/robmagario/DELL-Inspiron-14-5400-2-in-1-LAPTOP-EFI
* https://github.com/cstefann/Vostro-3490-hackintosh
* https://github.com/cstefann/Vostro-3490-hackintosh
* https://github.com/msdnna/Dell-Vostro-14-5490-Hackintosh ⭐️
* https://github.com/leon0410898/XPS13-9300-hackintosh
* https://github.com/dragons3232/Lenovo-gaming-3-10750h-hackintosh-EFI
* https://github.com/lietxia/XiaoXinAir14IML_2019_hackintosh
* https://github.com/LuckyCrack/Legion-5i-EFI
* https://github.com/frozenzero123/YOGA-S740
* https://github.com/whca/lg-gram-17z90n-EFI
* https://github.com/itsdrnoob/Mi-NoteBook-14-Hackintosh ⭐️
* https://github.com/elishevatavori/Xiaomi-Redmibook-16-Hackintosh
## Desktops
* https://github.com/yrambler2001/Hackintosh-Intel-i5-10600-RX560-AsRock-B460M-Pro4
* https://github.com/xiaoyaowx/Hackintosh-Z490-ASRock-Steel-Legend-Intel-10700
* https://github.com/CasperNan/opencore-ASUS-B460m-plus-10400
* https://github.com/jalalabdulaziz/ROG-Strix-B460-I
* https://github.com/intihyan/OC-b460i-strix-i7-10700
* https://github.com/polarisink/ROG_B460i_Hackintosh
* https://github.com/yilmazca/intel-i9-10900K-Asus-prime-Z490A-hackintosh
* https://github.com/evenlinyf/hackintosh-EFI-Z490A-i710700k-5700xt
* https://github.com/taoche/Z490-E-Hackintosh
* https://github.com/jergoo/Hackintosh-ROG-STRIX-Z490I
* https://github.com/stevenliuit/Hackintosh-Intel-i7-10700k-ASUS-Z490m-plus-5500xt
* https://github.com/shijij/OSX_EFI_Asus_Z490_MAXIMUS_FORMULA
* https://github.com/billzhong/dell-precision-3240-compact-hackintosh
* https://github.com/dovtuan/Gigabyte-B460M-Aorus-Pro-Hackintosh-Open-Core
* https://github.com/duongnguyensr/opencore-efi
* https://github.com/nhd2106/EFI-Hackintosh-B460M-Aorus-Pro-Core-i5-10400-RX-580-wifi-intel-AX200
* https://github.com/bangbaew/Gigabyte-B460M-DS3H-Hackintosh
* https://github.com/bugprogrammer/hackintosh/tree/Z490-AORUS-ELETE+10900K+RX5700XT
* https://github.com/SchmockLord/Hackintosh-Intel-i9-10900k-Gigabyte-Z490-Vision-D
* https://github.com/xiaovie/Hackintosh-Intel-i9-10900k-Gigabyte-Z490-Vision-D
* https://github.com/rursache/Hackintosh-i9-10900k-Z490-Vision-G
* https://github.com/eos-alchemist/EFI.Z490.Vision.D
* https://github.com/weiyien/Hackintosh_GIGABYTE_Z-490_I5-10400
* https://github.com/SwimmingPig/Hackintosh-Intel-i5-10400-Gigabyte-Z490M-Gaming-X
* https://github.com/abing258/z490i-i9-10850k-5500xt
* https://github.com/josways/B460M-MORTAR
* https://github.com/cheneyxx/Hackintosh-10400-B460M-MORTAR
* https://github.com/Abhinavcs7/EFI-For-MSI-H41OM-PRO---VH-MacOS-big-sur-
* https://github.com/dakezi/i3-10100-MSI-H410M-BOOMER-UHD630-Hackintosh-EFI
* https://github.com/Dir3Rav3n/MSI-MAG-Z490-TOMAHAWK-i7-10700-OpenCore-
* https://github.com/Baio1977/MSI-MAG-Z490-Tomahawk-UHD630
* https://github.com/redcweed/z490
* https://github.com/Flop88/opencore
* https://github.com/kingwood77/MSI-Z490i-Unify-Hackintosh
* https://github.com/wjz304/Hackintosh-EFI-MSI-Z490i-Unify
* https://github.com/diskerror/EFI

# PCI information from ubuntu
```
00:00.0 Host bridge: Intel Corporation Device 8a12 (rev 03)
00:02.0 VGA compatible controller: Intel Corporation Iris Plus Graphics G7 (rev 07)
00:04.0 Signal processing controller: Intel Corporation Device 8a03 (rev 03)
00:07.0 PCI bridge: Intel Corporation Ice Lake Thunderbolt 3 PCI Express Root Port #0 (rev 03)
00:0d.0 USB controller: Intel Corporation Ice Lake Thunderbolt 3 USB Controller (rev 03)
00:0d.2 System peripheral: Intel Corporation Ice Lake Thunderbolt 3 NHI #0 (rev 03)
00:14.0 USB controller: Intel Corporation Ice Lake-LP USB 3.1 xHCI Host Controller (rev 30)
00:14.2 RAM memory: Intel Corporation Device 34ef (rev 30)
00:15.0 Serial bus controller [0c80]: Intel Corporation Ice Lake-LP Serial IO I2C Controller #0 (rev 30)
00:15.1 Serial bus controller [0c80]: Intel Corporation Ice Lake-LP Serial IO I2C Controller #1 (rev 30)
00:16.0 Communication controller: Intel Corporation Management Engine Interface (rev 30)
00:17.0 SATA controller: Intel Corporation Ice Lake-LP SATA Controller [AHCI mode] (rev 30)
00:1c.0 PCI bridge: Intel Corporation Device 34ba (rev 30)
00:1c.6 PCI bridge: Intel Corporation Device 34be (rev 30)
00:1d.0 PCI bridge: Intel Corporation Ice Lake-LP PCI Express Root Port #9 (rev 30)
00:1e.0 Communication controller: Intel Corporation Ice Lake-LP Serial IO UART Controller #0 (rev 30)
00:1e.3 Serial bus controller [0c80]: Intel Corporation Ice Lake-LP Serial IO SPI Controller #1 (rev 30)
00:1f.0 ISA bridge: Intel Corporation Ice Lake-LP LPC Controller (rev 30)
00:1f.3 Audio device: Intel Corporation Smart Sound Technology Audio Controller (rev 30)
00:1f.4 SMBus: Intel Corporation Ice Lake-LP SMBus Controller (rev 30)
00:1f.5 Serial bus controller [0c80]: Intel Corporation Ice Lake-LP SPI Controller (rev 30)
2c:00.0 Network controller: Intel Corporation Wi-Fi 6 AX200 (rev 1a)
2d:00.0 Ethernet controller: Realtek Semiconductor Co., Ltd. RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller (rev 15)
2e:00.0 Non-Volatile memory controller: Sandisk Corp Device 5009 (rev 01)
```
# Built-in display EDID from SwitchResX
```
EDID report generated by SwitchResX Version 4.10.1  for display Built-in Display


-----------------------------------------------------
------------------- RAW DATA ------------------------
-----------------------------------------------------
	 00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F
-----------------------------------------------------
0  | 00 FF FF FF FF FF FF 00 09 E5 03 00 03 00 00 00
1  | 01 1D 01 03 80 0B 11 78 2F 00 00 A0 57 49 9B 26
2  | 10 48 4F 00 00 00 01 01 01 01 01 01 01 01 01 01
3  | 01 01 01 01 01 01 C2 1A 20 50 30 00 10 50 10 10
4  | 32 00 6C AC 00 00 00 18 00 00 00 FC 00 54 56 30
5  | 38 30 57 55 4D 2D 4E 4C 30 0A 00 00 00 FD 00 3C
6  | 3C 10 10 07 00 00 00 00 00 00 00 00 00 00 00 00
7  | 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 C3

-----------------------------------------------------
 < 00FFFFFF FFFFFF00 09E50300 03000000 011D0103 800B1178 2F0000A0 57499B26 10484F00 00000101 01010101 01010101 01010101 0101C21A 20503000 10501010 32006CAC 00000018 000000FC 00545630 38305755 4D2D4E4C 300A0000 00FD003C 3C101007 00000000 00000000 00000000 00000000 00000000 00000000 000000C3 >

-----------------------------------------------------
 { 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x09, 0xE5, 0x03, 0x00, 0x03, 0x00, 0x00, 0x00, 0x01, 0x1D, 0x01, 0x03, 0x80, 0x0B, 0x11, 0x78, 0x2F, 0x00, 0x00, 0xA0, 0x57, 0x49, 0x9B, 0x26, 0x10, 0x48, 0x4F, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0xC2, 0x1A, 0x20, 0x50, 0x30, 0x00, 0x10, 0x50, 0x10, 0x10, 0x32, 0x00, 0x6C, 0xAC, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00, 0xFC, 0x00, 0x54, 0x56, 0x30, 0x38, 0x30, 0x57, 0x55, 0x4D, 0x2D, 0x4E, 0x4C, 0x30, 0x0A, 0x00, 0x00, 0x00, 0xFD, 0x00, 0x3C, 0x3C, 0x10, 0x10, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC3	}

-----------------------------------------------------
	Valid EDID block #0: checksum ok

-----------------------------------------------------
------------------- MAIN EDID BLOCK -----------------
-----------------------------------------------------

	EDID Version........1.3
	Manufacturer........BOE (09E5)
	Product ID..........3 (0003)
	Serial Number.......00000003

	Manufactured........Week 1 of year 2019
	Max H Size..........11 cm
	Max V Size..........17 cm
	Gamma...............2.20

Display Supported Features:
---------------------------
	Power Management: Active off


Display type:
-------------
	RGB color display
	Display is continuous frequency
	Default color space is sRGB standard
	First detailed Timing is preferred Timing


Input signal & sync:
--------------------
	Digital Input


Color info:
-----------
	Red x = 0.625  Green x = 0.285  Blue x = 0.148  White x = 0.281
	Red y = 0.340  Green y = 0.605  Blue y = 0.062  White y = 0.309

Established Timings supported:
------------------------------

Standard Timing supported:
--------------------------

Monitor Description blocks:
---------------------------
	Descriptor #0 - Timing definition:
	Mode =  800 × 1280 @ 60.062Hz
		Pixel Clock............. 68.50 MHz		Not Interlaced

		                        Horizontal		Vertical
		Active..................  800 pixels		1280 lines
		Front Porch.............   16 pixels		   3 lines
		Sync Width..............   16 pixels		   2 lines
		Back Porch..............   48 pixels		  11 lines
		Blanking................   80 pixels		  16 lines
		Total...................  880 pixels		1296 lines
		Scan Rate...............  77.841 kHz		 60.062 Hz
		Image Size..............  108 mm		 172 mm
		Border..................    0 pixels		   0 lines

			Sync: Digital separate with
				* Negative vertical polarity
				* Negative horizontal polarity

	Descriptor #1 - Monitor name:
		TV080WUM-NL0

	Descriptor #2 - Monitor range:
		Horizontal frequency range.......16-16 kHz
		Vertical frequency range.........60-60 Hz
		Maximum bandwidth range..........70 MHz
		GTF supported

	Descriptor #3 - Empty descriptor
```


# Built-in display EDID from ubuntu
```
edid-decode (hex):

00 ff ff ff ff ff ff 00 31 d8 00 00 00 00 00 00 
05 16 01 03 6d 14 21 78 ea 5e c0 a4 59 4a 98 25 
20 50 54 00 00 00 45 00 01 01 01 01 01 01 01 01 
01 01 01 01 01 01 c2 1a 20 50 30 00 10 50 10 10 
32 00 d0 4d 01 00 00 1e 00 00 00 ff 00 4c 69 6e 
75 78 20 23 30 0a 20 20 20 20 00 00 00 fd 00 3b 
3d 4c 4e 07 00 0a 20 20 20 20 20 20 00 00 00 fc 
00 38 30 30 78 31 32 38 30 0a 20 20 20 20 00 ea 

----------------

EDID version: 1.3
Manufacturer: LNX Model 0 Serial Number 0
Made in week 5 of 2012
Analog display, Input voltage level: 0.7/0.7 V
Sync: Separate Composite Serration 
Maximum image size: 20 cm x 33 cm
Gamma: 2.20
DPMS levels: Standby Suspend Off
RGB color display
First detailed timing is preferred timing
Color Characteristics
  Red:   0.6416, 0.3486
  Green: 0.2919, 0.5957
  Blue:  0.1474, 0.1250
  White: 0.3125, 0.3281
Established Timings I & II: none
Standard Timings
    800x504    60.001 Hz  16:10   31.320 kHz  31.571 MHz (GTF)
Detailed mode: Clock 68.500 MHz, 208 mm x 333 mm
                800  816  832  880 ( 16  16  48)
               1280 1283 1285 1296 (  3   2  11)
               +hsync +vsync
               VertFreq: 60.062 Hz, HorFreq: 77.841 kHz
Display Product Serial Number: Linux #0
Display Range Limits
  Monitor ranges (GTF): 59-61 Hz V, 76-78 kHz H, max dotclock 70 MHz
Display Product Name: 800x1280
Checksum: 0xea
```
