---
title: 终于驱动了笔记本ALC269VC的低音炮
date: '2019/1/11 13:48:25'
thumbnail: >-
  https://github.com/RockJesus/Alienware-anime-themes-for-CLOVER-EFI-bootloader/blob/master/screenshots/awhd.gif?raw=true
abbrlink: 41474
---

>本子型号 三星NT550P7C-S65 
声卡 ALC269VC 2.1声道，一个前面板左右声道扬声器，后面板一个低音炮

>之前一直在使用voodoohda，虽然可以驱动扬声器和低音炮但是耳机死活驱动不了，所以改用applealc，经过多次尝试终于成功，耳机，扬声器，低音炮，两个mic全部正常工作，但是不算完美。。

>待解决：
a.开机和睡醒时有爆音
b.耳机插拔时不能自动切换，需要手动切换
c.扬声器和低音炮音量不能总体控制，需要单独调节（附件里包含音量软件方便调节）用到的软件和alc文件打包 


***
>12.30更新 准完美版
解决自动切换和音量总体调节

>说下我的步骤：
1.layout修改intspeaker下添加一项 dspfunction 如图
![1.png](http://upload-images.jianshu.io/upload_images/15836855-fe1261dc158a05fe.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240 "1.png")
2.platform文件由idsdt获得，把低音炮和扬声器放在一组（注意子母项位置），修改低音炮channel格式如图
![2.png](http://upload-images.jianshu.io/upload_images/15836855-11c27e9dae588726.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240 "2.png")
3.使用PinConfigurator获得pinconfigdata
把codec里有用节点都add进去，点applefix，再手动修改低音炮倒数第二个数与扬声器相同（这里为4），最后一个数改为1，
点get configdata，最后加上01b70c02这组数据，修改PinConfigs.kext替换对应数据
![3.png](http://upload-images.jianshu.io/upload_images/15836855-aa339f492cee21eb.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240 "3.png")
4.注意layout和platform要打包成xml.zlib格式，info.plist里对应这两个文件名，编译安装Applealc.kext
5.修改dsdt里layoutid为0x0E （layoutid=14），ok重启

>还有两个小问题
a。唤醒时有爆音
b。唤醒后低音炮无声，但是耳机插拔后或者更改音量后又恢复正常
望大神指点迷津



>12.31 已上传 https://github.com/vit9696/AppleALC layoutid=14，改dsdt里为0x0E即可直接使用

>文件下载https://pan.baidu.com/s/1QLCznYTq523vwP-OoQCtpw



| 微信圈子                                                                                                                                                              | 微信小程序                                                                                                                                                              | 微信公众号                                                                                                                                                                                                                                                                                                                            | 
| ----------------------------------------------------------   | ----------------------------------------------------------   | ----------------------------------------------------------   |  
| ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/tony/%E5%BE%AE%E4%BF%A1%E5%9C%88%E5%AD%90.jpeg?raw=true) | ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/tony/%E5%BE%AE%E4%BF%A1%E5%B0%8F%E7%A8%8B%E5%BA%8F.png?raw=true) | ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/tony/微信公众号.jpg) | 
# ************ BUY ME A COFFEE & JOIN US ************
| 外星人黑苹果QQ群：308469644                                                                                                                                                              | 支付宝打赏                                                                                                                                                              | 微信打赏                                                                                                                                                              |  微信赞赏                                                                                                                                                              | 
| ----------------------------------------------------------   | ----------------------------------------------------------   | ----------------------------------------------------------   |  ----------------------------------------------------------   | 
| ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh/blob/master/qq.png?raw=true) | ![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/zfb.jpeg) | ![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/wx.jpeg) | ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/zsm.png?raw=true) |
