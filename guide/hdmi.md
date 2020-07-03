---
title: 一行patch驱动NVIDIA HDMI声音
date: '2019/1/11 13:48:25'
thumbnail: >-
  https://github.com/RockJesus/Alienware-anime-themes-for-CLOVER-EFI-bootloader/blob/master/screenshots/yoona.gif?raw=true
abbrlink: 43790
---

# **成功测试硬件**

> Alienware 17 R4
> alc298 
> 英特尔HD 630和Nvidia GeForce GT 1060

>**测试环境10.13.6 ，9系10系n卡可做参考，当webdriver更新10.14后应该同理**

![image](https://upload-images.jianshu.io/upload_images/15836855-274aa7c1f32fcf9d.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

![image](http://upload-images.jianshu.io/upload_images/15836855-8a3b26d51aaa122c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

>原帖地址：[WhateverGreen/FAQ.GeForce.en.md at master · acidanthera/WhateverGreen · GitHub](https://github.com/acidanthera/WhateverGreen/blob/master/Manual/FAQ.GeForce.en.md)
按照这里的操作确实可行，但是只讲到修改dsdt来显示被隐藏的hdmi声音HDAU设备，下面讲到如何通过hotpatch显示设备和驱动设备

#**hotpatch驱动方法：**

>1. win下到设备管理器-声音-nvidia hdmi-记录硬件id和bios硬件位置
例如我的硬件id为：厂商id=0x10de  设备id=0x10f1 （这里注意是硬件id不要记录成codecid）
bios硬件位置为：_SB/PCI0/PEG0/PEGP

![image](http://upload-images.jianshu.io/upload_images/15836855-aef55456ac6a8318.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

>2. mac下需要安装对应版本webdriver来驱动独显，外接显示器视频正常输出，但系统检测不到hdmi声音hdau硬件设备

>3. hotpatch 模版 这里等同原帖第一步操作，
打开ssdt修改对应bios硬件位置，和我一样的就不用改了，直接放到clover-acpi-patched里面
*我没有做原帖里面的第二步，因为在我的ssdt里搜索到了相同代码，无需操作，你的如果不行的话参考原帖尝试第二步修改

![image](http://upload-images.jianshu.io/upload_images/15836855-aa1fbbd4660c4b99.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)



>4. 改名使ssdt生效
打开config.plist-acpi-patches
添加改名补丁：
Comment：_PRT to XPRT in Device peg0
Find:5F505254
Replace:58505254
tgtbridge:50454730
如果和我的硬件位置不一样，参考下图修改,这步完成之后如果重启应该就可以看到hdmi声音设备了


![image](http://upload-images.jianshu.io/upload_images/15836855-c930cd79463c996c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)


![image](http://upload-images.jianshu.io/upload_images/15836855-78ff05e77390e90f.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

>5. 终于可以看到硬件了，那下一步就是驱动了，我的alc298 使用applealc驱动，但是驱动不了hdmi声音，
这里给出临时解决方案：利用voodoohda驱动hdmi声音，并且和applealc互不影响。
打开voodoohda模版的info.plist  注意这里修改为你的硬件ID=0x设备id+厂商id
和我一样的就不用改了，直接放到clover-kext-other里面
完工！重启进入mac测试你的hdmi声音吧

![image](http://upload-images.jianshu.io/upload_images/15836855-f42f191c3fe2b4f9.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)



>**待完善**
使用applealc来驱动hdmi声音，持续测试中。。。

>**模版下载：[n卡hdmi声音模版](https://pan.baidu.com/s/1w5neAaAVZhOMoqPunEpQAw)   （最新方法看下面）**

* * *

>最新更新lilu，applealc，whatevergreen后自带显示默认隐藏的hdmi声音代码，所以现在只需更改voodoohda里的n卡id即可驱动hdmi声音！！！
**最新clover下载：[AW17R4Mojave](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh)**


| 微信圈子                                                                                                                                                              | 微信小程序                                                                                                                                                              | 微信公众号                                                                                                                                                                                                                                                                                                                            | 
| ----------------------------------------------------------   | ----------------------------------------------------------   | ----------------------------------------------------------   |  
| ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/tony/%E5%BE%AE%E4%BF%A1%E5%9C%88%E5%AD%90.jpeg?raw=true) | ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/tony/%E5%BE%AE%E4%BF%A1%E5%B0%8F%E7%A8%8B%E5%BA%8F.png?raw=true) | ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/tony/微信公众号.jpg) | 
# ************ BUY ME A COFFEE & JOIN US ************
| 外星人黑苹果QQ群：308469644                                                                                                                                                              | 支付宝打赏                                                                                                                                                              | 微信打赏                                                                                                                                                              |  微信赞赏                                                                                                                                                              | 
| ----------------------------------------------------------   | ----------------------------------------------------------   | ----------------------------------------------------------   |  ----------------------------------------------------------   | 
| ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh/blob/master/qq.png?raw=true) | ![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/zfb.jpeg) | ![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/wx.jpeg) | ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/zsm.png?raw=true) |
