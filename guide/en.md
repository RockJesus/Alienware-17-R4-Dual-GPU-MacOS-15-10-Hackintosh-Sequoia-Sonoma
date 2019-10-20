---
title: AW 17 R4 DUAL-GPU MacOS
date: '2019/1/1 13:48:25'
thumbnail: >-
  https://github.com/RockJesus/Alienware-anime-themes-for-CLOVER-EFI-bootloader/blob/master/screenshots/alienwareb.gif?raw=true
top: true
abbrlink: 38070
---

>http://bbs.pcbeta.com/viewthread-1797200-1-1.html

>https://www.tonymacx86.com/threads/guide-alienware-17-r4-dual-gpu-macos-mojave.263577/

![black.jpg](https://upload-images.jianshu.io/upload_images/15836855-72d2a9b165783b77.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![WechatIMG12.jpeg](https://upload-images.jianshu.io/upload_images/15836855-d9517c5492cd8da3.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![aw17.jpg](https://upload-images.jianshu.io/upload_images/15836855-c39e6a33c93bbe15.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)



>**My hardware**
Alienware 17 R4
1080p
i7-7700HQ
Intel HD 630 & Nvidia GeForce GT 1060
16G RAM
SM961 Samsung NVME 256
REALTEK ALC298
KILLER E2500
Dell DW1560 (Broadcom BCM94352Z)
BIOS version 1.5.0


>**BIOS Configuration**
SATA MODE AHCI
SECURE BOOT NO
BOOT UEFI


>**Overview**
I've got dual-gpu working good on 10.13.6,Now just waiting for the webdriver for 10.14.
*In windows OS press FN+F7 to change graphic mode:
1.dual gpu mode:Indisplay connects to hd630,Exdisplay connects to nvidia 1060
2.nvidia gpu only mode:Indisplay & Exdisplay both connects to nvidia 1060
![about.png](https://upload-images.jianshu.io/upload_images/15836855-a87e2d31ac389301.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
![pci.png](https://upload-images.jianshu.io/upload_images/15836855-d21ddbae414e4f32.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


>**What Works**
CPU Power Management
Battery Support
Intel HD 630 & Nvidia GeForce GT 1060(when webdriver has installed)
HDMI out (with hotplug) & Audio out(when webdriver has installed)
Audio ALC298 (2.1ch with subwoofer)
Headphone
Brightness & volume Keys
Keyboard
AlienFX keyboard & logo LED lights (follow the settings on windows os but using vmware boot to windows and load the aw1517 usb device could change Alienfx light on macos)
Trackpad with Gestures
Webcam
WiFi and Bluetooth
Ethernet
iCloud Services
Continuity and Hand-off
USB 3.0 & TYPE-C
Thunderbolt devices with hotplug before sleep
Sleep & Wake (only power button could wakeup system)

>**What Doesn't Work**
Keyboard & mouse wakeup sysytem
Thunderbolt devices with hotplug after wake
ALIENFX light control on Macos
Webcam IR function
Trackpad light (Bios touchpad backlight=auto with no light ,but Bios touchpad backlight=on with light always on)

>**What Needs Improvement**
Backlight auto adjust (ALS0 device)
HWsensor for more info
LPCB,SBUS,Thermal subsystem controllers seems not working normally
Things under "What Doesn't Work"

>**Install**
If you can't see install partition try to press F3 on clover boot screen

>**Post Install**
**HIDPI**
Run script in Terminal:
Code:
sh -c "$(curl -fsSL https://raw.githubusercontent.com/xzhih/one-key-hidpi/master/hidpi.sh)"

>**Change ur own productid & vendorid in kext's info.plist ()**
AppleMouseKeyboard.kext
Applesmcmotion.kext (KIOX device)
UVC2FaceTimeHD.kext (cam)
VoodooHDA.kext (nvidia hdmi controller id)

>**Nvidia webdriver**
copy and paste the following in a terminal:
Code:
bash <(curl -s https://raw.githubusercontent.com/Benjamin-Dobell/nvidia-update/master/nvidia-update.sh)

>**Audio**
ALC298: layout-id=11 https://github.com/acidanthera/AppleALC
Headphone/Headset volume ALCplugfix(deprecated):
Code:
cd alc_fix
chmod +x install.sh
./install.sh
Headphone/Headset volume fix Combojack(newway):
Code:
cd ComboJack
chmod +x install.sh
./install.sh
Install Boom 3D APP to get better audio output



>**Change log**
hdmi audio changed to hotpatch from dsdt patch
usbports.kext
cpu pm 800-3800mhz
Add smcmotionsensor
Fixed BT issue by droping DMAR table
change virtualsmc to fakesmc for getting more sensors (Fan & nvidia temp)
Add intel & nvidia GPU PM
alcplugfix seems not working on 10.14,changed to verstub(combojack) for headset fix
smbios=mbp15,1
New released lilu & whatevergeen etc,No need to hotpatch hdmi audio any more,but still need voodoohda to make hdmi audio work
changed to virtualsmc

>**Dump request**
I really need a dump of real Macbookpro 14,3's full acpi dsdt/ssdt & IOREG & system report.spx , Any help will be appreciated!

>**Updates on my github:https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh**


| 外星人黑苹果QQ群：308469644                                                                                                                                                              | 
| ----------------------------------------------------------   | 
| ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh/blob/master/qq.png?raw=true) |


# 如果文章对你有帮助，欢迎打赏作者. If u like, Buy me a coffee  :)
| 支付宝                                                                                                                                                              | 微信                                               |
| ----------------------------------------------------------   | ---------------------------------------------------- |
| ![image](/img/zfb.png) | ![image](/img/wx.png) | 
