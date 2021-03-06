
尝试安装 Arch
------

到时下载 GNOME 肯定需要镜像, 网上找到 163 的 repo 的配置代码
http://www.ourys.com/post/archlinux-mirrorlist.html
root 修改 `/etc/pacman.d/mirrorlist` 文件, 替换内容

```
Server = http://mirrors.163.com/archlinux/$repo/os/i686
Server = http://mirrors.sohu.com/archlinux/$repo/os/i686
```

`pacman -Sy` 同步本地库

以前尝试 Arch 遇到了无线网卡驱动有麻烦. 这次算我运气好
先按 Arch 的 Wiki 看自己的 BCM4313 网卡是都被支持
https://wiki.archlinux.org/index.php/Broadcom_wireless
刚好 `brcm80211` 在 `2.6.37` 已经加入内核, 后来重命令了
我做了简单的尝试, 以前也尝试过, 多次尝试的结果是下面的资源
http://cboard.cprogramming.com/networking-device-communication/118431-connect-wireless-network-via-linux-command-line.html
http://www.ghacks.net/2009/04/14/connect-to-a-wireless-network-via-command-line/

```bash
ifconfig wlan0 up
iwlist wlan0 scan
```

我的无线网卡对应 `wlan0` 的, 这样刚好也搜索出来两个 AP
同学的帮助下, 我连接上了没折密码的一个, 名字设为 name-of-ip

```bash
iwconfig wlan0 essid name-of-ip
```

后面 `dpclient wlan0` 似乎没用, 因为 `ifconfig` 早就看到 IP 了
另一个参照教程的命令始终没成功
http://www.ghacks.net/2009/04/14/connect-to-a-wireless-network-via-command-line/

```bash
iwconfig wlan0 essid NETWORK_ID key WIRELESS_KEY
iwconfig wlan0 essid NETWORK_ID key WIRELESS_KEY
```
按错误我找到资源, 是 WAP 协议的不同, 我还不打算尝试
http://www.360doc.com/content/12/0505/03/9318309_208740319.shtml
另外关于 iwconfig 的资源还没找到好的
http://jasy.ice.blog.163.com/blog/static/8843073020112179448868/

去看以前的教程发现旧的 `/arch/setup` 命令不存在了
慢慢发现最新版的 Arch 装上了, 用了叫做 `pacstrap` 的脚本安装方式
https://allencch.wordpress.com/2012/07/23/trying-arch-install-scripts/
http://www.2cto.com/os/201207/142788.html
http://www.cnblogs.com/chee-z/archive/2012/07/16/2593895.html
看了一圈大概的意思是直接 root 进 LiveCD 跑命令安装的

系统的显卡, 问了同学才确定是 310M 是 300M 系列的, 对应官网
https://wiki.archlinux.org/index.php/NVIDIA_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)#.E5.A4.87.E7.94.A8.E5.AE.89.E8.A3.85.EF.BC.9A.E5.AE.9A.E5.88.B6.E5.86.85.E6.A0.B8
http://www.nvidia.cn/Download/index.aspx?lang=cn
然后看大概安装显卡是在 `startx`  之后.. 缓一缓..
http://blog.sina.com.cn/s/blog_69e5d8400100q0an.html
也许开源驱动可用, 或者 `AUR` 上是有编译好的开源驱动了
http://smilett.com/?p=650
或者别的因素吧
http://www.mystone7.com/2012/05/20/ubuntu_install_nvidia/

打算开始安装的话, LiveCD 主目录下有 txt 文件提示具体的信息, 但难懂
先 Ubuntu 看累别人给新手的详细的示范, 不过最开始的分区并不清晰
http://forum.ubuntu.org.cn/viewtopic.php?f=155&t=383371&start=0
简单的清晰的也有, 那么我应该去熟悉一下 fdisk 具体的用法
http://blog.rebill.info/tag/ArchLinux/

看到官方的说明, 突然明白, 大家用的不同的方式分区的, 所以命令看去不一样
https://bbs.archlinuxcn.org/viewtopic.php?pid=7554
http://blog.rebill.info/tag/ArchLinux/
我干脆看了下 `cfdisk`, 大概只有分区, 没有挂载任何事情
官方推荐 4 个分区, 图省事我 4 个都是主分区好了,  解释是
http://blog.csdn.net/rubenyu/article/details/6227373
主分区的特点是 `bootloader` 必须放在主分区, 最多刚好 4 个
http://www.enet.com.cn/article/2008/0303/A20080303171898.shtml
cfdisk 选择文件类型的代码没直接写 `ext4`, 我在网上没找到直接的说法
http://www.360doc.com/content/11/0517/11/1429472_117375801.shtml
链接说 `83` 是 `ext3`, 单词是 `Linux` 那么 `84` 的确没有找到对应
我勉强用 `sudo fdisk -l` 和 `df -T` 对比看了相同 `Blocks` 的确是 `83` 对应 `ext4` 的
我用的是 `cfdisk` 命令, 没有指定目标磁盘, 但看大小的数据是硬盘没错

键盘布局用 `loadkeys uk` 命令直接完成了

再接着看文档接下来是 `mkfs.ext4 /dev/sdaX` 其中 `X` 是数字, 按分的顺序可以知道
然后还有 swap 对应的格式化命令. 就是是前面我做的磁盘格式都白费了...
https://bbs.archlinuxcn.org/viewtopic.php?pid=7554
后面的按照命令打没问题了, 先是用 `vi` 痛苦地改了源, 然后开始下载
中间的 `mkinitcpio` 部分, 是选用的, 不懂就直接照抄了. 介绍在这里
https://wiki.archlinux.org/index.php/Mkinitcpio_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)
一直到重启发现没有 `iwconfig` 命令, 没网! 想起前面 `chroot` 那么厉害..
于是我再次 boot 进 U 盘的系统, 联网, 挂载分区, `arch-chroot`, 搜索相应的包
  pacman -S net-tools dnsutils inetutils iproute2
http://forum.ubuntu.org.cn/viewtopic.php?f=155&t=347020
http://www.linuxquestions.org/questions/linux-newbie-8/installing-arch-where-is-iwconfig-686124/

然后果然可以了, 在运行下命令刷新仓库.. 想起来查看我的仓库的源只有镜像两个

```bash
pacman -Syy
pacman-key --init
pacman-key --populate archlinux
```

然后 `adduser` 添加用户, `su` 命令切换, 然后安装 `sudo`
https://wiki.archlinux.org/index.php/Sudo_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)
接着安装图形界面, 还有 NVIDIA 和 触摸板.. 傻瓜式复制了

```bash
pacman -S xorg-server xorg-xinit xorg-utils xorg-server-utils mesa mesa-demos
pacman -S xf86-video-nouveau xf86-input xf86-input-synaptics
pacman -S xorg-twm xorg-xclock xterm
```

主目录下没有 `~/.xinitrc`, 开始安装 `DBUS`

```bash
pacman -S dbus
```

测试启动 X 成功了. 那么接下来还有 GNOME..

```bash
startx
```

接着是安装字体, 另外的字体需要的 `yaourt` 我还没安装

```bash
pacman -S ttf-dejavu
```

安装 `yaourt` 直接有文档, 添加仓库之后直接开始安装了..
http://archlinux.fr/yaourt-en
速度不行, 于是先安装 `axel` 再按资源修改下载线程数量
http://www.douban.com/group/topic/18640913/
关于 `yaourt` 命令的使用细节在这里
http://bashell.sinaapp.com/archives/install-yaourt.html
终于下载好了文泉驿, 开始具体配置有文档, 不过我先放着
https://wiki.archlinux.org/index.php/Font_Configuration_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)

安装 GNOME 选的包比较没头绪.. 下载的时间比较长

```bash
pacman -S gnome gdm
```

因为 `startx` 依然是 X, 于是添加相应配置启动
http://www.abc188.com/info/html/caozuoxitong/FreeBSD/20090513/122683.html
第一次启动 GNOME 失败了, 于是想把 GNOME 全部都安装一遍好了
搜索关键词发现是 DBUS 没起来, 于是加到 `/etc/rc.conf` 一行

```
dbus_enable="YES"
```

https://www.freebsdchina.org/forum/viewtopic.php?t=43904&sid=7f7254522144cc43aa993d02e130bcda
上面的命令找不到 `dbus` 于是找正确的命令启动了 GNOME
http://www.linuxsir.org/bbs/thread355833.html
最后 GNOME 桌面短暂地运行了一下, 每次都是 `Something has gnome wrong`
原来 DBUS 没起来.. 于是把 DBUS 添加到 DAEMON 里自动启动
https://wiki.archlinux.org/index.php/D-Bus_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)
还是要命令连接网络, 于是安装 `networkmanager network-manager-applet`
通过 `sudo /etc/rc.d/networkmanager start` 启动, 出现图标
https://wiki.archlinux.org/index.php/NetworkManager_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)
然后 `networkmanger` 加入到 DAEMON 里, 图标是有了
仔细看了下, 把 `networkmanager` 放到 `dbus` 之后, 开机能连接无密码的网络了
然后 `networkmanager` 没有编辑网络的权限, 涉及到 Consolekit 和 `wheel` 组
`wheel` 组说是遗物一样的管理员组, 我差点以为过时不再有效了
https://groups.google.com/forum/?fromgroups=#!topic/xiyoulinux/ByQMjawxW8c
ConsoleKit 按文档我改了 `~/.xinit` 让后者能被前者包括

```
exec ck-launch-session gnome-session
```

https://wiki.archlinux.org/index.php/ConsoleKit
还是不行, 按 `networkmanager` 的说明添加自己到 wheel 组里

```bash
gpasswd -a youruser wheel
```

`gparted` 命令的介绍
http://www.lampblog.net/ubuntu/gpasswd%E5%91%BD%E4%BB%A4/
关于 ConsoleKit 的作用, 问题不相干, 但能看下
http://log4d.com/2012/05/networkmanager-policykit-consolekit/
这样就能添加网络还有自动管理网络了, 设置了密码的 AP 也没问题

设置网络的同时, 先装 IBus, 直接有的, 注意要重启已经运行的程序才能用输入法
触摸板不能用, 发现 `xf86-input-synaptics` 没装, 按教程装上重启 X 即可
https://wiki.archlinux.org/index.php/Touchpad_Synaptics_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)
看到启动 GNOME 有 `color-plugin-WARNING` 类似错误, 尝试安装 `gnome-color-manager`
https://bugs.launchpad.net/ubuntu/+source/gnome-settings-daemon/+bug/835277

安装 `nodejs git  mongodb nginx`, `npm` 自动安装的. 手动添加一下中文镜像
通过 `yaourt` 安装 `sublime-text-dev`, 发现不用 `sudo` 也安装成功
http://note.ninehills.info/sublime-text-in-linux.html
AUR 的介绍
https://wiki.archlinux.org/index.php/Arch_User_Repository_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)
跳出来看不懂的 `keyring` 设置, 看了介绍, 于是 `-R` 掉. Arch 里还轻松
http://www.chenhuan.net/gnome-keyrings-puzzled.html
http://blog.csdn.net/happinux/article/details/5682192
安装 Chrome 出错, 发现 Chromium 版本很高, 于是不打算安装
http://bbs.51osos.com/thread-5381-1-1.html
后来发现是 `axel` 不能下载, 注释了改动的部分然后开始下载了
安装 `mosh ttf-ubuntu-font-family bash-completion ntp`
通过 `ntpdate asia.pool.ntp.org` 同步时间
http://blog.163.com/drzxqing@126/blog/static/59351445201011132447778/
http://blog.sina.com.cn/s/blog_5f66526e0100q1xd.html
觉得还是不行, 按下面链接的的一个方案添加了服务
http://blog.samsonis.me/2009/02/archlinux%E4%B8%8B%E7%9A%84%E6%97%B6%E9%97%B4%E6%97%B6%E5%8C%BA%E8%AE%BE%E7%BD%AE/
结果还是不行, 按下面的将调整后的时间保存
https://bbs.archlinuxcn.org/viewtopic.php?id=308
Twitter `ssl error` 需要安装 `python2-pyopenssl` 这个包
终端不能显示 utf-8 字符的问题, 我修改了 locale 以后重启很奇怪地才成功
按文档是在 `/etc/rc.conf` 添加 `LOCALE="en_US.UTF-8"`
然后 `/etc/environment` `LANG="en_US.UTF-8"`
Mosh 的问题只好添加参数来连接, 弄不清楚具体

```bash
mosh root@server4 --server="LANG=$LANG mosh-server"
```

https://github.com/keithw/mosh/issues/98

字体问题, 网上说有补丁, 都是 Ubuntu 的后缀, 装了没效果
http://followning.blog.163.com/blog/static/141333234201142223841775/
我最后是, 在论坛求助最后完成的, 具体不如完成还是不清晰, 参考我的帖
http://forum.ubuntu.org.cn/viewtopic.php?f=105&t=386662
https://groups.google.com/forum/?fromgroups=#!topic/archlinux-cn/-6KGX4VQAmQ
然后到字体初步解决为止关于安装软件的命令, 也许有用
https://gist.github.com/3721169
我猜测是先装上提到过的 `-ubuntu` 结尾的包, 还有 `-infinality` 结尾的包
再就是尽可能多地安装可能遇到的字体
到今天我还是遇到怀疑来源于 webfonts 的字体不能正常显示, 还在装
总之问题都是没有解决的, 有了解的大侠请指点一下
