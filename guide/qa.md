---
title: 五国/日常问题集合Q&A
date: '2019/1/11 13:48:25'
thumbnail: >-
  https://github.com/RockJesus/Alienware-anime-themes-for-CLOVER-EFI-bootloader/blob/master/screenshots/mac.gif?raw=true
abbrlink: 24320
---

>1 Busy Timeout[0], kextd wait(0):'AppleACPICPU'
这个错误找了很多帖子，最后将Clover 更新到最新版本，并将Clover下的kexts/other目录下的kext全部复制到kexts/10.13下解决。
换fakesmc 
删除4个温度kext
开机clover-option-Bin下选项打勾尝试


>2 hd4400-4600花屏 8苹果 
一。添加AzulPatcher4600.kext
ig-platform-id 0x04128086 
fake-id-intelgfx 0x0a260006
二、在clover中注入一个修改过的EDID
00FFFFFFFFFFFF000DAE351700000000321601049526157802D495A355509D270F505400000001010101010101010101010101010101B43B804A71383440302035007ED710000018000000FE004E3137334847452D4531310A20000000FE00434D4E0A202020202020202020000000FE004E3137334847452D4531310A2000E0
```或者直接贴clover config代码
<key>Graphics</key>
<dict>
<key>EDID</key>
<dict>
<key>Custom</key>
<data>
AP///////wANrjUXAAAAADIWAQSVJhV4AtSVo1VQnScPUFQAAAAB
AQEBAQEBAQEBAQEBAQEBtDuASnE4NEAwIDUAftcQAAAYAAAA/gBO
MTczSEdFLUUxMQogAAAA/gBDTU4KICAgICAgICAgAAAA/gBOMTcz
SEdFLUUxMQogAOA=
</data>
<key>Inject</key>
<true/>
</dict>
<key>Inject</key>
<dict>
<key>ATI</key>
<false/>
<key>Intel</key>
<true/>
<key>NVidia</key>
<false/>
</dict>
<key>NvidiaSingle</key>
<false/>
<key>ig-platform-id</key>
<string>0x0a260006</string>
</dict>
```

>3 still waiting for root device
开启ahci
换usb口尝试
CPUS＝1
更新fakesmc

>4 Mbr安装找不到内核
-v /System/Library/PrelinkedKernels/Prelinkedkernel

>5 双显卡上两行 &解决外接屏幕滞留问题
clover injectNv==的都打勾
添加clover/drivers64UEFI/EmuVariableUefi-64.efi

>6 在安装High Sierra启动过程中，选择-v跑时会出现"Attempting system restart...MACH Reboot”，而不用-v图跑直接显示苹果标志时则不会出现。
更换fakesmc 
删除4个温度kexts
fix headers打勾
drop掉 mach
Drop掉 DMAR
drop掉MATS，
drop掉BGRT。
drop掉#MCFG
drop oem都不勾
dart=0

>7 app store下载有问题 
设置 网络 dns 8.8.8.8

>8. 启动完成后，安装器提示 OSInstall 已缺失或损坏
【更新】解决：删掉clover/drivers64UEFI/EmuVariableUefi-64.efi

>9.卡osaptio ++++++++++
cpu kernel lapic 打勾
更换OsxAptioFix。。。efi

>10，n卡 驱动
web 打勾
添加clover/drivers64UEFI/EmuVariableUefi-64.efi
device设置里删nv相关patch
删除dgpu.aml
nvram=no （开机clover界面f11可清除nvram）
nvda_drv=1
lilu+nvidiagraphicsfixup

>11 更新系统后闪退重启 
bash <(curl -s https://raw.githubusercontent.com/Benjamin-Dobell/nvidia-update/master/nvidia-update.sh)
更新fakesmc+lilu等相关驱动 删除4个温度传感器驱动
-lilubeta
-liluoff

>12 蓝牙开关
usbinjectall+btinjector 添加usb里蓝牙id

>13 登录转圈卡顿
改smbios尝试

>14 多显示器同时连接开机黑屏
Bios 下修改 
csm=enable
legacy option oprom=enable

>15 蓝牙搜不到设备无法使用
去win下卸载自带蓝牙驱动，尝试安装不同版本的蓝牙驱动，Drop tables 添加DMAR表单
再回到mac尝试


# 如果文章对你有帮助，欢迎打赏作者,欢迎加入我的QQ群 
# If u like, Buy me a coffee & JOIN US :)
| 外星人黑苹果QQ群：308469644                                                                                                                                                              | 支付宝打赏                                                                                                                                                              | 微信打赏                                                                                                                                                              |  微信赞赏                                                                                                                                                              | 
| ----------------------------------------------------------   | ----------------------------------------------------------   | ----------------------------------------------------------   |  ----------------------------------------------------------   | 
| ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-Mojave-10.14-Hackintosh/blob/master/qq.png?raw=true) | ![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/zfb.jpeg) | ![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/wx.jpeg) | ![image](https://github.com/RockJesus/Alienware-17-R4-Dual-GPU-MacOS-10.15-14-13-Hackintosh/blob/master/zsm.png?raw=true) |
