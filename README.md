# Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra 10.13.6 【Dual Graphics】

http://bbs.pcbeta.com/viewthread-1761528-1-1.html

配置
Alienware 17 R4
bios版本1.2.4
CPU:Intel  i7-7700hq
显卡:Intel HD630 /  Nvidia GeForce GT 1060
内存:16g
硬盘:Sandisk m.2 256G /希捷 1T （添加nvme sm961 256g）
声卡：alc298
网卡：killer e2500 (wifi 更换为dw1560-bcm94352z )

成功驱动「HD630+nvidia 1060双显卡」声卡网卡，满足日常使用（双显卡模式请看第二部分）
![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/about.png)
![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/des.png)
![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/pci.png)

------------------------------------------------------------------------------------------------------------------------------
第一部分（核显模式）

只能在win10下fn+f7以核显模式启动 ，独显模式启动会黑屏
使用情况
1.hotpatch屏蔽NVIDIA 1060
（优点节能省电低温）


2.原生驱动I7-7700HQ 核显 HD630
（外接hdmi显示器无信号，内屏连接hd630输出正常，thunderbolt/dp未测试）


3.声卡ALC298也叫ALC3266（自制applealc已上传github layoutid=11 精简版下载请看2楼）
（笔记本自带2.1声道，左右扬声器声音正常无破音，低音炮安装boom2后低音正常并且提高了整体最大音量，内置mic正常，外接耳机声音极小（2楼已修复），外接mic未测试）


4.网卡Killer E2500
（有线正常，killer-wifi无解，自配小米usb wifi正常使用 


5.电池驱动
（电量信息显示正确）


6.USB 3.0
(两个usb口正常，type-c测试看2楼)


7.蓝牙/摄像头正常使用
（蓝牙开关无法关闭，2楼已修复）


8.ALIENFX灯光正常，键盘/触摸板使用正常
（键盘和logo灯光保持win下配置好的颜色，    触摸板bios=auto时无光，bios开启touchpad backlight可常亮，不会自动熄灭，2楼更新解决方案）


9.cpu 15档变频，睡眠能睡醒不来，黑屏但有光 （2楼已修复）




核显版本CLOVER文件分享   CLOVERhd630
(适合不需要hdmi的同学&安装时使用)


------------------------------------------------------------------------------------------------------------------------------------




第二部分 （双显卡模式&单独显模式）
特别感谢@【解】小天


使用前提：安装webdriver （补充一点安装完重启前要删除hotpatch屏蔽独显的ssdt或直接覆盖下面附件）


此配置config兼容两种启动方式
A：win10下fn+f7 以核显启动-双显卡模式（个人推荐）
原生驱动I7-7700HQ HD630 / webdriver 驱动nvidia 1060
（外接hdmi显示器连接1060视频输出正常，hdmi声音不出声（已修复），内屏连接hd630输出正常，HDMI热拔插正常，thunderbolt未测试）


B：win10下fn+f7 以独显启动-单独显模式
HD630貌似被屏蔽 / webdriver 驱动nvidia 1060
（外接hdmi显示器和内屏连接1060视频输出正常，有个问题插着hdmi启动会黑屏，不插hdmi启动正常，HDMI热拔插正常，hdmi声音不出声（已修复），thunderbolt/dp未测试）


声卡 网卡 电池 USB 蓝牙/摄像头 ALIENFX灯光 睡眠 cpu变频 （和第一部分相同）


双显版本CLOVER文件分享   CLOVERhd630+1060
(适合需要hdmi的同学使用）

两部分三种启动方式优缺点自行斟酌
------------------------------------------------------------------------------------------------------------------------------
2楼

10/7更新 亮度保存  

10/8更新 耳机/睡醒无声修复   ALCPlugFix-master 感谢@darkhandz

10/10更新 解决关机重启问题   

10/11更新 自己制作的 applealc for alc298 (alc3266) 已经上传applealc github，你也可以到https://github.com/vit9696/AppleALC 这里自行下载编译 layoutid=11

10/16更新 优化核显版本   

10/31更新  添加蓝牙注入    （解决蓝牙开关问题）                  
          添加lpc注入     （kabylake到底需不需要加载lpc？）                 
          自行删除fakesmc下蓝牙和lpc条目，以后可以无痛更新fakesmc了
          
11/1更新 终于能睡醒了！适用于睡醒黑屏的情况    （删除clover里edid注入相关选项）

11/6更新 安卓手机做wifi网卡   

11/7更新 双显模式 睡眠完美 解决睡醒黑屏&无声 （前提要使用10/8耳机补丁）更新clover&kexts版本，替换了新的hwp驱动方法精简优化设置，仿冒facetimehd摄像头等   （用核显版本的同学自行添加屏蔽独显补丁）

11/9更新 仿冒白苹果鼠标   （自行修改info下的pidvid为你的鼠标id，注意十六进制转十进制）

11/10更新 SSDT-PCIALL-Rockjesus 显示所有pci设备信息   适合双显卡版本，可注入声显卡id (clover设置删除相关选项，并勾选injectnvidia)，其他机型可自行参考修改

11/13更新 修复雷电usb-c口支持热拔插    http://bbs.pcbeta.com/viewthread-1769978-1-1.html

1/27更新 增加nvme sm961 256g 替换wifi dw1560（bcm94352z）无线蓝牙完美更新clover/驱动/优化等  
        附上KBLFB edp/hdmi补丁：
        com.apple.driver.AppleIntelKBLGraphicsFramebuffer
        00000800 02000000 98000000 
        00000800 00040000 98000000 
        0-edp
        
        com.apple.driver.AppleIntelKBLGraphicsFramebuffer
        01050900 00040000 87010000 
        01050900 00080000 87010000 
        1-hdmi
        
10/24更新 修复hdmi声音输出
        
clover美化贴:http://bbs.pcbeta.com/viewthread-1725492-1-1.html
http://bbs.pcbeta.com/viewthread-1724405-1-1.html
http://bbs.pcbeta.com/viewthread-1770623-1-1.html
http://bbs.pcbeta.com/viewthread-1766401-1-1.html
声卡帖子：http://bbs.pcbeta.com/viewthread-1729541-1-1.html
鼠标主题：http://bbs.pcbeta.com/viewthread-1766401-1-1.html

PS：
  8.mac下修改键盘灯方法 http://bbs.pcbeta.com/viewthread-1780839-1-1.html

  更新10.13.4后发现不用屏蔽独显了，也不需修改或添加edid文件，睡眠完美，又省了两步，不错！  
  
  推荐软件boom2   

  bios设置：raid on 改为ahci secure boot 关闭 touchpad backlight改为on （可选）  
  
  10/18测试雷电口/type-c可正常使用，热拔插ok，但睡醒后会挂
 

Q1：cpu必须使用这个VoodooTSCSync.kext才能正常使用，否则进入系统响应超慢，请问这个问题有解吗？
Q2: hdmi声音至今未搞定（已修复）
Q3: 未驱动硬件
![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/drv.png)

问题多多不够完美，要完善的地方还有很多，慢慢更新吧
寻找机油一起研究 QQ群: 308469644

*************** BUY ME A COFFEE *********************************************************
![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/wx.jpeg)
![image](https://github.com/RockJesus/Alienware-17-R4-I7-7700HQ-MacOS-High-Sierra/blob/master/zfb.jpeg)
