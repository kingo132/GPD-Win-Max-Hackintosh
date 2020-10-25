# GPD-Win-Max-Hackintosh
Hello, everyone. This is a repository discussing how to install Mac OS Catalina (or newer version) on GPD Win Max.

Thanks to all the volunteers who participated in this project. We have achieved the minimal requirement to use Mac OS on this little machine.

However, there's still some difficult problem need to be solved. We are currently trying to solve them in our leisure time. The progress may very slow. If you are also interested, join us to solve them together.

# WinMax running Cataline 10.5.7
![image](https://github.com/kingo132/GPD-Win-Max-Hackintosh/blob/main/photos/screenshot.png)

# What's working
* All USB port works include two type-c port. (TODO: Need to test if USB3 works)
* Both two type-c ports can connect to external type-c to DP or HDMI monitors. I have tested BQNQ 4K monitor without a problem.
* Joystick emulated mouse works.
* Gigabyte ethernet port works.
* The native keyboard works.
* The Intel Iris integrated graphic card works, and the screen can be rotated 270 degrees by using ScreedResX.
# What's working but have flaws 
* Wifi can be driven by itlwm kext driver, the speed is tested at 20Mbps. However, the itlwm driver may fail to load occasionally at startup. I have checked the boot log and found nothing. The itlwm is just waiting for the hardware to response but the hardware doesn't give a response. Maybe this is a hardware conflict or the itlwm driver needs to be modified.
* The Bluetooth also stops to load occasionally. Maybe the same cause as Wifi. Need to do more tests. When Bluetooth loads successfully. It works perfectly without a problem.
* The battery information is read but can not read capacity. This is due to the _STA function in SSDT. Need to be fixed.
# What's not working and currently trying to solve
* The touchpad is not working - need to modify SSDT, and also maybe need to develop drivers
* The touch screen is not working - the same as the touchpad, however, someone has already developed a touchscreen driver for GPD P2Max, these two touchscreens is the same.
* There are glitches on the screen when entering desktop and shutting down. Tried many fixes and no avail. Maybe this is an Apple framebuffer driver problem, or display edid problem. Or maybe we need to wait for 1038ng7 to fix this problem.
* Sleep/Hibernate problem - maybe need to modify SSDT code of CPU
* System may freeze during shutdown - may be related to sleep/hibernate problem
* Thunderbolt 3 is not driven - need to modify SSDT and BIOS configuration
* HDMI port is not working - maybe it will not work because Apple does not have an HDMI port in this CPU
* iStat Menu can not read the temperature of CPU


# You may need to modify BIOS settings
Note: We are testing under BIOS version 1.11
## How to modify
* By using ru.efi. I have uploaded my BIOS dump file [winmax_bios_dump.txt](https://github.com/kingo132/GPD-Win-Max-Hackintosh/blob/main/winmax_bios_dump.txt). You can find offset in this file and modify it using ru.efi.
* Use setvar by grub. Check this [tutorial](https://github.com/Azkali/GPD-P2-MAX-Hackintosh/issues/16#issuecomment-565882180)
* Other BIOS modify tools
## The options need to be modified
* cfg-lock: Enable -> Disable
* Vt-d: Enable -> Disable
* Dvmt: 60MB -> 64MB

Other options that the default value is satisfied
* above 4g: default is enable
* csm: default is disabled
* boot mode select: default is efi

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
