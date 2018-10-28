# Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh

http://bbs.pcbeta.com/viewthread-1797200-1-1.html

![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh/blob/master/tony/30846964424404cb8b69890eb.jpg)
![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh/blob/master/tony/laptop-alienware-17-mlk-pdp-4.jpg)
![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh/blob/master/tony/BD9A110F-8366-4FAC-8C43-74A93A43A533.png)
![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh/blob/master/tony/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202018-10-28%20%E4%B8%8B%E5%8D%884.03.16.png)

My hardware
	•	Alienware 17 R4
	•	1080p
	•	i7-7700HQ
	•	Intel HD 630 & Nvidia GeForce GT 1060
	•	16G RAM
	•	SM961 Samsung NVME 256 
	•	REALTEK ALC298
	•	KILLER E2500 
	•	Dell DW1560 (Broadcom BCM94352Z)
	•	BIOS version 1.5.0
 

BIOS Configuration
	•	SATA MODE AHCI
	•	SECURE BOOT NO
	•	BOOT UEFI
 
 
Overview
I've got dual-gpu working good on 10.13.6,Now just waiting for the webdriver for 10.14.
*In windows OS press FN+F7 to change graphic mode:
  1.dual gpu mode:Indisplay connects to hd630,Exdisplay connects to nvidia 1060 
  2.nvidia gpu only mode:Indisplay & Exdisplay both connects to nvidia 1060

What Works
	•	CPU Power Management
	•	Battery Support
	•	Intel HD 630 & Nvidia GeForce GT 1060(when webdriver has installed)
	•	HDMI out (with hotplug) & Audio out(when webdriver has installed)
	•	Audio ALC298 (2.1ch with subwoofer)
	•	Headphone 
	•	Brightness & volume Keys
	•	Keyboard 
	•	AlienFX keyboard & logo LED lights (follow the settings on windows os but using vmware boot to windows and load the aw1517 usb device could change Alienfx light on macos)
	•	Trackpad with Gestures
	•	Webcam
	•	WiFi and Bluetooth
	•	Ethernet
	•	iCloud Services
	•	Continuity and Hand-off
	•	USB 3.0 & TYPE-C
	•	Thunderbolt devices with hotplug before sleep
	•	Sleep & Wake (only power button could wakeup system)
What Doesn't Work
	•	Keyboard & mouse wakeup sysytem
	•	Thunderbolt devices with hotplug after wake 
	•	ALIENFX light control on Macos
	•	Webcam IR function
	•	Trackpad light (Bios touchpad backlight=auto with no light ,but Bios touchpad backlight=on with light always on)
What Needs Improvement
	•	Backlight auto adjust (ALS0 device)
	•	HWsensor for more info
	•	LPCB,SBUS,Thermal subsystem controllers seems not working normally 
	•	Things under "What Doesn't Work"

Install
	•	If you can't see install partition try to press F3 on clover boot screen
Post Install
	•	Audio
	◦	ALC298: layout-id=11 https://github.com/acidanthera/AppleALC
	◦	Headphone/Headset volume ALCplugfix:
          cd alc_fix 
          chmod +x install.sh 
          ./install.sh 
          
	◦	Install Boom 3D APP to get better audio output

*************** BUY ME A COFFEE *********************************************************
![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/wx.jpeg)
![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/zfb.jpeg)
