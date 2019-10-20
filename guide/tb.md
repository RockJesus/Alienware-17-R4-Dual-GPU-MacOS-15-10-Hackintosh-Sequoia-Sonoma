---
title: Mac雷电3 type-c 热拔插支持
date: '2019/1/11 13:48:25'
thumbnail: >-
  https://github.com/RockJesus/Alienware-anime-themes-for-CLOVER-EFI-bootloader/blob/master/screenshots/lake.gif?raw=true
abbrlink: 1856
---

>配置Alienware 17 r4
雷电3:8086, 15DA,Intel JHL6340 Thunderbolt 3 Bridge (C step) [Alpine Ridge 2C 2016]

>原先没有任何修改时，开机前插着雷电启动，可以使用雷电设备，但是不能热拔插，睡醒回来也会挂。。。
后来发现@the-darkvoid写了macOS-IOElectrify这个KEXT，拿来试试终于可以热拔插了，感谢作者！！！

![屏幕快照 2017-11-19 上午10.13.01.png](http://upload-images.jianshu.io/upload_images/15836855-5288bf339933712f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240 "屏幕快照 2017-11-19 上午10.13.01.png")

![屏幕快照 2017-11-19 上午10.18.20.png](http://upload-images.jianshu.io/upload_images/15836855-0f693157247ec252.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240 "屏幕快照 2017-11-19 上午10.18.20.png")

![屏幕快照 2017-11-19 上午10.18.48.png](http://upload-images.jianshu.io/upload_images/15836855-5ee7dad8a2a213cc.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240 "屏幕快照 2017-11-19 上午10.18.48.png")

![屏幕快照 2017-11-19 上午10.20.28.png](http://upload-images.jianshu.io/upload_images/15836855-c03b40d832664d3c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240 "屏幕快照 2017-11-19 上午10.20.28.png")

![屏幕快照 2017-11-19 上午10.19.38.png](http://upload-images.jianshu.io/upload_images/15836855-870c5c0c98f1f925.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240 "屏幕快照 2017-11-19 上午10.19.38.png")

![屏幕快照 2017-11-19 上午10.19.48.png](http://upload-images.jianshu.io/upload_images/15836855-a330024960ecb893.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240 "屏幕快照 2017-11-19 上午10.19.48.png")

>貌似把雷电仿冒成了express card所以thunderbolt下无显示。。
同机型可直接使用前往https://github.com/RockJesus/macOS-IOElectrify

> 待解决问题：开机必须插着雷电启动才能使用，睡醒后雷电口依旧会挂，重新拔插也不行
[backcolor=rgba(27, 31, 35, 0.05)]UB31@00200000: AppleUSBXHCIPort::powerOn: deadline passed (PORTSC 0x00000000) UB21@00100000: AppleUSBXHCIPort::powerOn: deadline passed (PORTSC 0x00000000) TBTU@00000000: AppleUSBHostController::setPowerStateGated: going to state 1 returned 0xe00002e9 TBTU@00000000: AppleUSBHostController::hardwareExceptionThreadCallGated: attempting recovery TBTU@00000000: AppleUSBHostController::hardwareExceptionThreadCallGated: 0x00000004 TBTU@00000000: AppleUSBHostController::hardwareExceptionThreadCallGated: attempting recovery TBTU@00000000: AppleUSBHostController::setPowerStateGated: going to state 2 failed with 0xe00002e9 TBTU@00000000: AppleUSBHostController::hardwareExceptionThreadCallGated: 0x00000008
[backcolor=rgba(27, 31, 35, 0.05)]日志里一直循环这些，求大神帮助解决！!


> xps或者其他机型参考作者的https://github.com/the-darkvoid/macOS-IOElectrify
1.自行修改ssdt内雷电路径
举例:Scope (\_SB.PCI0.PEG2.PEGP)
Scope (\_SB.PCI0.RP05.PXSX)
2.（可选不确定作用）IOElectrify.kext/info.plist里添加你的雷电bridge id ， 删除所有#
举例：IOPCIPrimaryMatch       0x76158086空格0x15da8086空格你的id

> 附上参考文章：
https://www.tonymacx86.com/threads/usb-c-hotplug-not-working.223534/
https://www.tonymacx86.com/threads/usb-c-hotplug-questions.211313/
https://github.com/gunslinger23/XPS15-9560-High-Sierra/tree/master/CLOVER/ACPI/patched
https://github.com/wmchris/DellXPS15-9550-OSX/tree/10.13/10.13/Advanced/DSDT-HotPatches/Patches
# 如果文章对你有帮助，欢迎打赏作者,欢迎加入我的QQ群 
# If u like, Buy me a coffee & JOIN US :)
| 外星人黑苹果QQ群：308469644                                                                                                                                                              | 支付宝打赏                                                                                                                                                              | 微信打赏                                                                                                                                                              |  微信赞赏                                                                                                                                                              | 
| ----------------------------------------------------------   | ----------------------------------------------------------   | ----------------------------------------------------------   |  ----------------------------------------------------------   | 
| ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh/blob/master/qq.png?raw=true) | ![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/zfb.jpeg) | ![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/wx.jpeg) | ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/zsm.png?raw=true) |

