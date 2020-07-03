# Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh

[![Platform](https://img.shields.io/badge/platform-macOS-red.svg)](https://developer.apple.com/macos) [![img](https://img.shields.io/badge/link-996.icu-red.svg)](https://996.icu/) 


![image](https://github.com/RockJesus/Alienware-anime-themes-for-CLOVER-EFI-bootloader/blob/master/screenshots/awmanhd.gif)

# Guides [中文版](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/README.md)|||[English](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh/blob/master/README.md)|||[subwoofer](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/guide/alc.md)|||[hdmi audio](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/guide/hdmi.md)|||[led light](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/guide/light.md)|||[mouse theme](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/guide/mouse.md)|||[clover theme](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/guide/theme.md)|||[thunderbolt](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/guide/tb.md)|||[Q&A](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/guide/qa.md)|||[远景论坛](http://bbs.pcbeta.com/viewthread-1833933-1-1.html)|||[tonymacx86](https://www.tonymacx86.com/threads/guide-alienware-17-r4-dual-gpu-macos-mojave-10-14-hackintosh.288728/)



![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh/blob/master/tony/30846964424404cb8b69890eb.jpg)
![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh/blob/master/tony/laptop-alienware-17-mlk-pdp-4.jpg)
![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh/blob/master/tony/BD9A110F-8366-4FAC-8C43-74A93A43A533.png)
![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/des.png)
![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh/blob/master/tony/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202018-10-28%20%E4%B8%8B%E5%8D%884.03.16.png)

# My hardware

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
	
 
![image](https://github.com/RockJesus/Alienware-anime-themes-for-CLOVER-EFI-bootloader/blob/master/screenshots/alienwarewb.gif)

# BIOS Configuration

	•	SATA MODE AHCI
	
	•	SECURE BOOT NO
	
	•	BOOT UEFI
	
 
 
# Overview

I've got dual-gpu working good on 10.13.6,Now just waiting for the webdriver for 10.14.

*In windows OS press FN+F7 to change graphic mode:

  1.dual gpu mode:Indisplay connects to hd630,Exdisplay connects to nvidia 1060 
  
  2.nvidia gpu only mode:Indisplay & Exdisplay both connects to nvidia 1060
  

# What Works

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
	
	
# What Doesn't Work

	•	Keyboard & mouse wakeup sysytem
	
	•	Thunderbolt devices with hotplug after wake 
	
	•	ALIENFX light control on Macos
	
	•	Webcam IR function
	
	•	Trackpad light (Bios touchpad backlight=auto with no light ,but Bios touchpad backlight=on with light always on)
	
	
# What Needs Improvement

	•	Backlight auto adjust (ALS0 device)
	
	•	HWsensor for more info
	
	•	LPCB,SBUS,Thermal subsystem controllers seems not working normally 
	
	•	Things under "What Doesn't Work"
	

# Install

	•	If you can't see install partition try to press F3 on clover boot screen
	
# Post Install

        •	HIDPI
	
	◦       Run script in Terminal:
	
	        sh -c "$(curl -fsSL https://raw.githubusercontent.com/xzhih/one-key-hidpi/master/hidpi.sh)"
		
	•       Change ur own productid & vendorid in kext's info.plist
	
	◦        AppleMouseKeyboard.kext
	
        ◦         Applesmcmotion.kext (KIOX device)
		 
        ◦        UVC2FaceTimeHD.kext (cam)
		 
        ◦        VoodooHDA.kext (nvidia hdmi controller id)
		 
        •	Nvidia webdriver
	
	◦        Run script in Terminal:
	
	         bash <(curl -s https://raw.githubusercontent.com/Benjamin-Dobell/nvidia-update/master/nvidia-update.sh)
		 
	•	Audio
	
	◦	ALC298: layout-id=11 https://github.com/acidanthera/AppleALC
	
	◦	Headphone/Headset volume ALCplugfix(deprecated):
	
          cd alc_fix 
	  
          chmod +x install.sh 
	  
          ./install.sh 
	  
        ◦	Headphone/Headset volume fix Combojack(newway):
	
          cd ComboJack 
	  
          chmod +x install.sh 
	  
          ./install.sh 
	  
          
	◦	Install Boom 3D APP to get better audio output
	
# Change log:

	•hdmi audio changed to hotpatch from dsdt patch
	
	•add usbports.kext
	
	•cpu pm 800-3800mhz
	
	•Add smcmotionsensor
	
	•Fixed BT issue by droping DMAR table
	
	•change virtualsmc to fakesmc for getting more sensors (Fan & nvidia temp)
	
	•Add intel & nvidia GPU PM
	
	•alcplugfix seems not working on 10.14,changed to verstub(combojack) for headset fix
	
	•smbios=mbp15,1
	
	•New released lilu & whatevergeen etc,No need to hotpatch hdmi audio any more,but still need voodoohda to make hdmi audio work
	
# Dump request:

I really need a dump of real Macbookpro 14,3's full acpi dsdt/ssdt & IOREG & system report.spx , Any help will be appreciated!

![image](https://github.com/RockJesus/Alienware-anime-themes-for-CLOVER-EFI-bootloader/blob/master/screenshots/alienwareb.gif)

# All other Alienware models: https://github.com/RockJesus/Alienware-Hackintosh

# My blog: https://rockjesus.github.io/
| 微信圈子                                                                                                                                                              | 微信小程序                                                                                                                                                              | 微信公众号                                                                                                                                                                                                                                                                                                                            | 
| ----------------------------------------------------------   | ----------------------------------------------------------   | ----------------------------------------------------------   |  
| ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/tony/%E5%BE%AE%E4%BF%A1%E5%9C%88%E5%AD%90.jpeg?raw=true) | ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/tony/%E5%BE%AE%E4%BF%A1%E5%B0%8F%E7%A8%8B%E5%BA%8F.png?raw=true) | ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/tony/微信公众号.jpg) | 
# ************ BUY ME A COFFEE & JOIN US ************
| 外星人黑苹果QQ群：308469644                                                                                                                                                              | 支付宝打赏                                                                                                                                                              | 微信打赏                                                                                                                                                              |  微信赞赏                                                                                                                                                              | 
| ----------------------------------------------------------   | ----------------------------------------------------------   | ----------------------------------------------------------   |  ----------------------------------------------------------   | 
| ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh/blob/master/qq.png?raw=true) | ![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/zfb.jpeg) | ![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/wx.jpeg) | ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/zsm.png?raw=true) |
