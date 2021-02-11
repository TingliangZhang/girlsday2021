# Girl's Day of 2021 Presents Design
2021年交叉班女生节礼物——名片 设计

智能名片交互hhh



## 功能

Tagmo - 制作自己的Amiibo

[Popl - Your digital business card](https://popl.co/)

卡里面只有一个ID和我们服务器网址信息，具体这张名片能传达多少社交信息就由用户在网页端或者客户端配置了。以及最好加密一下，防止被轻易拿去干别的，比如友商出个教程，我们的卡就都变成他们的了

[The Blue Smart Card](https://blue.social/) - Reinventing the Name Tag. Create your virtual identity and be social again.

[Mobilo - The Smart Business Card](https://www.mobilocard.com/)



[Fuze Card, 0.84mm innovative electronic card technology.](https://fuzecard.com/)

KickStarter页面 [Fuze Card](https://www.indiegogo.com/projects/fuze-card-your-whole-wallet-in-one-card--3#/): Your Whole Wallet in One Card

[Unbox Therapy](https://www.youtube.com/channel/UCsTcErHg8oDvUnTzoqsYeNw)评测视频：[Your Whole Wallet In One Card](https://www.youtube.com/watch?v=7SPOVJi3H6g)



[Find Your Keys, Wallet & Phone with Tile's App and Bluetooth](https://www.thetileapp.com/en-us/)



[2.13寸 无源NFC 墨水屏 e-paper ESL电子货架标签 无线供电/刷新](https://item.taobao.com/item.htm?id=613699970326)

微雪NFC墨水屏标签



[小米碰碰贴2](https://item.jd.com/100014996634.html) nfc感应开关 全能投屏音乐接力碰触连网一碰连接米家智能场景



## 可参考项目

[PCB Business Card With NFC](https://www.instructables.com/PCB-Business-Card-With-NFC/) - 能存网址的名片

[THE NFC KEY](https://n-o-d-e.net/nfckey.html) - 存储密钥的带物理按键NFC

[Digital Business Card With NFC](https://www.instructables.com/Digital-Business-Card-With-NFC/) - 只是把NFCTag扔进两张纸之间去了。

[StyloCard](https://mitxela.com/projects/stylocard) - 乐器名片

[L-ink_Card](https://github.com/peng-zhihui/L-ink_Card) - 带墨水屏的NFC Tag

## 问题

手机的NFC功能可能默认关闭，而且NFC线圈位置不固定：苹果在正面顶部，安卓手机大多在背面。



## 进度追踪

2020/12 提出想法，女生节送智能名片

2021/1/27 开始设计

2021/1/28-29 元件选型和天线参数计算

2021/1/30-2/2 天线python脚本生成编写

2021/2/2 第一版测试板交付嘉立创打样，同时采购了元件，同时着手买NFC和RFID读取器



## To Do List

- [ ] 服务器配置
- [ ] 网站搭建
- [ ] PCB外观设计
- [ ] 自动生成PCB脚本编写（集成bitmap2component）
- [ ] 硬件原理调试
- [ ] 用户体验测试（大雾）
- [ ] SD卡大小Tag设计和测试，特别是V槽拼版
- [ ] 加入墨水屏



## 工具

[KiCAD](http://www.kicad.org/)及其插件

[Interactive HTML BOM plugin for KiCad](https://github.com/openscopeproject/InteractiveHtmlBom)

[AutoCAD](https://www.autodesk.com/products/autocad/overview) 2021 Edu Edition



Linux下软件：

[Krita | Digital Painting. Creative Freedom.](https://krita.org/) 绘画软件

[Draw Freely | Inkscape](https://inkscape.org/) 矢量图编辑器



## 外形设计Outline

依据身份证等使用的ISO 7810-2003国际标准中的ID-1：ID-1的规定尺寸为85.60×53.98毫米（3.370×2.125英寸），常用于身份证、银行卡（如提款卡、信用卡）、驾照、个人名片，以及商店发出的忠实顾客卡等。其长宽比与黄金分割（1.618:1）接近。

ISO 7813规范ID-1塑胶银行卡的附加特性，包括0.76毫米厚度，及3.18毫米半径的圆角。

所以设计为

85.60×53.98毫米

3.18毫米半径的圆角

0.76毫米厚度（做0.8mmPCB板）

横向排版



或者用ID-3画成小的钥匙链



## Tile大小版本设计

Tile Pro：42mm x 42mm x 6.5mm  孔7mm直径

Tile Mate：35mm x 35mm x 6.2mm 孔6.5mm

<img src="image-20210203080907272.png" alt="image-20210203080907272" style="zoom: 33%;" />

初步设计为 40mm x 40mm x 1.6mm 孔6mm直径 倒角5mm直径圆

天线尺寸为30x30mm 0.3x0.3mm 11圈，电感4.98uH(@13.56Mhz)

天线封装焊盘为 0.3 x 0.5mm圆形通孔（嘉立创双面板最小过孔内径0.3mm,最小外径0.5mm）和 0.3 x 0.5mm矩形贴片焊盘



[嘉立创教学系列之：各软件拼板作业指引](http://club.szlcsc.com/article/details_468_1.html)

嘉立创拼版V割出货：走线和焊盘距板边距离≥0.4mm，否则可能涉及到板内的线路及焊盘，如果是拼版，则线离边必须要有0.4mm间距，否则v割会伤到线路。如果是单片出货，则需要帮≥0.2mm的间距。

VCUT(V割)板边离线的距离不小于0.4MM，CNC（锣边）正常是版边离线的距离不小于0.3MM，内槽离走线离线的最小距离不得小于0.3MM

V-CUT（V割工艺）：

（1）V割的拼板，板与板相连处不留间隙，也就是两块板外形线重叠放置，但是要注意，板子内的导线离V割线距离不小于0.4mm，以免切割时伤到走线。

（2）一般V割后残留的深度为1/3板厚，产品手动掰开后由于玻璃纤维丝有被拉松的现象，尺寸会略有超差，个别产品会偏大以上。

（3）V-CUT刀只能走直线，不能走曲线和折线。

（4）拼板尺寸在8cm以上才能做V-CUT工艺。





拼版设计：

可以考虑30cm x 30cm 九块边缘倒角板子拼起来，横排中间留2mm锣边，纵排无间距V割，纵排两侧有5mm工艺边和2.0mm定位孔及1.0mm的Mark点（一个焊盘）。

全部画在EdgeCut里面就好，嘉立创OEM会帮忙加V割或者锣边，如果版式一样，可以只画一个电路。在复制EdgeCut层的时候，可以在右边隐藏别的层。

<img src="image-20210203111650603.png" alt="image-20210203111650603" style="zoom:25%;" />

由于强度问题，拼版V割的话还是要紧密连接，不能像上面这种设计。必须要加支撑才行。

<img src="image-20210203114430093.png" alt="image-20210203114430093" style="zoom:25%;" />

但是拼版订单要多加钱。

所以还是先打单板吧。



## 简笔画头像生成

CV算法生成简笔画头像

[ArtLine](https://github.com/vijishmadhavan/ArtLine)

运行环境：[Colab](https://colab.research.google.com/github/vijishmadhavan/Light-Up/blob/master/ArtLine.ipynb)

CoLab中图片拖到根目录去上传，之后导入：

```python
img = PIL.Image.open("cai.jpg").convert("RGB")
```

[U-2-Net](https://github.com/NathanUA/U-2-Net)还有其前身[APDrawingGAN](https://github.com/yiranran/APDrawingGAN)



## 芯片选型

NXP NTAG

https://www.themobileknowledge.com/wp-content/uploads/2018/07/02-Webinar-slies-Antenna-design-for-NTAG-I2C-plus.pdf



ST25 Dynamic NFC Tags

https://www.st.com/en/nfc/st25-dynamic-nfc-tags.html

ST25DV04K

https://www.st.com/en/nfc/m24lr04e-r.html#overview

[M24LR04E-RMN6T/2](https://item.szlcsc.com/168717.html)[射频卡芯片](https://list.szlcsc.com/catalog/981.html)

测试板：

[M24LR-DISCOVERY](https://www.st.com/en/evaluation-tools/m24lr-discovery.html)

[X-NUCLEO-NFC02A1](https://www.st.com/en/ecosystems/x-nucleo-nfc02a1.html)

## NFC线圈设计

NFC Antenna Generator

https://kbeckmann.github.io/2016/06/19/NFC-Antenna-Generator/

[NFC Antenna Design | RF Design | eDesignSuite](https://eds.st.com/antenna/)



电路中天线电感计算计算：

主要参考AN2866 -  Antenna design procedure

Internal tuning capacitor in ST25DV04K SO8N(f = 13.56 MHz) $C_{TUN} = 28.5 pF$

计算公式：$L_{A} C_{S} \omega^{2}=1$

具体推导：
$$
L_{A}=\frac{1}{4 \pi^{2} f^{2} C_{S}}
$$

$$
L_{A}=\frac{1}{4*3.14^{2}*13.56^{2}*28.5}=4.84uH
$$

谐振理论：

At low frequencies $\left(f<f_{\text {self res }} / 10\right),$ the stray capacitance $C_{\text {ant }}$ is negligible, $L_{A}=L_{\text {ant }}$ and the antenna reactance is given by $X_{A}=j L_{\text {ant }} \omega$.
At $13.56 \mathrm{MHz}, \mathrm{C}_{\text {ant }}$ value gets in the range of some $\mathrm{pF}$ and $\mathrm{L}_{\mathrm{A}}>\mathrm{L}_{\text {ant }}$.

The antenna impedance is $Z_{\text {ant }}=R_{A}+j L_{A} \omega$.

The NFC / RFID chip impedance is $Z_{S}=R_{s}+j / C_{S} \omega$.

For the equivalent RLC circuit, the total impedance is $Z_{\text {tot }}=Z_{\text {ant }}+Z_{s}$ and the resonant frequency is given by the condition $L_{A} C_{S} \omega^{2}=1$.
Optimum antenna tuning

At resonant frequency the total impedance reaches its minimum value $Z_{\text {tot }}=R_{A}+R_{S}$. The current in the antenna and the voltage delivered to the NFC / RFID chip are maximized, as the energy transferred to the device.



物理天线电感

嘉立创PCB成品外层铜厚1oz~2oz(35um~70um)选择35um

单片出货，走线和焊盘距板边距离≥0.2mm，否则可能涉及到板内的线路及焊盘。

直接留3.18mm边缘。

最小线隙，多层板3.5mil 单双面板5mil (1mil=1/1000inch=0.0254mm)

Antenna Length =  85.60 - 3.18x2 = 79.24 mm

Antenna Width = 53.98 - 3.18x2 = 47.62 mm

Turns = 6

Equivalent Inductance@13.56 Mhz = 4.98 µH

考虑到布线过程中的寄生电容等，接近4.84 µH，可以接受这一设计。

![image-20210131215223753](image-20210131215223753.png)



动态NFC天线计算主要参考 AN2972 How to design an antenna for dynamic NFC tags 

封装库画六圈螺线太难了，准备用dxf导入，先使用Adobe Illustrate绘制，依然太麻烦放弃。

还是写py脚本向导吧。



## NFC Antenna创建向导编写

参考官方示例

https://docs.kicad.org/5.1/en/pcbnew/pcbnew.html#Footprint_Wizards

[KiCad Scripting Examples](https://kicad.mmccoo.com/?page_id=83)

参考C:\Program Files\KiCad\share\kicad\scripting\plugins中的脚本。

C:\Users\Zhang\AppData\Roaming\kicad\scripting\plugins

[KiCad](https://github.com/KiCad)/**[kicad-footprint-wizards](https://github.com/KiCad/kicad-footprint-wizards)**

Defining Parameters

Footprint wizards are written in Python and are simple to develop. Each footprint wizard defines a number of footprint parameters, which are organised into categories called "Pages". [Read further on footprint parameters](https://github.com/KiCad/Footprint_Wizards/wiki/Footprint-Parameters)

主要参考microMatch_connectors.py，焊盘直接用SMD的长方形焊盘

To greatly simplify development of custom footprint wizards, the FootprintWizard base class is provided, and only a handful of simple functions need to be written for each wizards. [Read further on minimum wizard requirements](https://github.com/KiCad/Footprint_Wizards/wiki/Minimum-Wizard-Requirements)

先画一个最简单的练手



注意每次更改需要重启KiCAD新脚本才能生效，DeBug的时候因为这个浪费了不少时间。如果加载脚本失败，可以看到报错信息。

通过self.AddParam("Conductor", "spacing", self.uMM, 0.6)传递进来的 self.uMM 其实是已经转化成nm为单位的整型变量了，不需要再用pcbnew.FromMM(1.0)转换为nm。

<img src="image-20210202083858099.png" alt="image-20210202083858099" style="zoom:50%;" />

算法可参考HTML的脚本，but我选择自己写hhh

二维数组需要初始化，测试py文件单独编写测试，VScode在安装Python插件后可以在Debug标签页查看变量。



之后手动添加焊盘，嘉立创双面板最小过孔内径0.3mm,最小外径0.5mm，一号焊盘用0.6x1.524mm矩形贴片，注意取消勾选F.Paste和F.Mask工艺层以令外观美观，二号焊盘用圆形通孔0.8x0.5mm，注意取消勾选F.Mask和B.Mask工艺层以令外观美观

左下角：（100，100）

右上角：（185.6，46.02）

中心定位点：（142.8，73.01）



## 信息填写

QR Code Wizard使用丝印层而非铜层

> Use SilkS layer: True
> Use Cu layer: False



字符：

最小字符：线宽6mil 字符高40mil，参数为极限值，尽量大于此参数

故字符采用0.2mm线宽 1mm字符高度

目前仅支持英文字符，KiCAD 6.0 将支持中文字符输入



## 矢量图导入

使用KiCAD主页 位图转换为元件 工具进行转换，直接可以导出kicad_mod文件，注意选择顶层丝印。

调黑白阈值还是很丑的，可以考虑通过Artline生成简笔画。

调整尺寸需要通过调分辨率实现，DPI越高图片越小。注意名片尺寸为85.60×53.98毫米，合适的头像应当为30mm x 30mm

同学们的头像参数调节

| Who      | DPI  | 尺寸      | 黑白阈值 |
| -------- | ---- | --------- | -------- |
| NFC Logo | 4000 | 10 x 10mm | 30       |
| cai      | 600  | 26 x 26mm | 80       |
| luna     | 700  | 30 x 30mm | 70       |
| danni    | 300  | 37.3      | 30       |



[Artistic PCB Design for Terrified Beginners](https://wiki.hope.net/index.php?title=Artistic_PCB_Design_for_Terrified_Beginners_workshop)



## NFC + 墨水屏

[实用新型] 一种无源NFC电子墨水屏显示系统 申请号：2020204091829

微雪e-Paper相关资料

https://www.waveshare.net/wiki/Main_Page#Display-e-Paper

特别是驱动板如[e-Paper Driver HAT](https://www.waveshare.net/wiki/E-Paper_Driver_HAT)等

但是屏线多数是SPI，所以估计需要一个STM32转接一下，其实之后的按键等外围设备也需要一个单片机来做。



NFC墨水屏模块

https://www.waveshare.net/wiki/2.7inch_NFC-Powered_e-Paper_Module

NFC烧写器开发板

https://www.waveshare.net/wiki/ST25R3911B_NFC_Board



购买了以上两种产品，发现NFC墨水屏的主控芯片型号竟然被磨掉了。。。

<img src="image-20210211104203433.png" alt="image-20210211104203433" style="zoom:10%;transform:rotate(270deg);" />

通过SWD接口接入，读取到型号是[STM32L4P5/Q5](https://www.st.com/en/microcontrollers-microprocessors/stm32l4p5-q5.html)，不出所料，ultra‐low‐power系列。

<img src="image-20210211104320836.png" alt="image-20210211104320836" style="zoom:25%;" />

旁边的那个写着ofz 02f s20x的6pin芯片是 TPS62122，降压dcdc

NFC Tag估计是，用NFC Tools Pro读取得到型号，是一个NXP MIFARE Ultralight

<img src="image-20210211104608506.png" alt="image-20210211104608506" style="zoom:25%;" />

现在量一下电容充电曲线，7.5V，在识别和写图的时候充能，但是没有明显的充放电，应该就是个小电容。

<img src="image-20210211105954953.png" alt="image-20210211105954953" style="zoom:25%;" />

## V1V2焊接调试

注意ST24的marker是一边的斜边对应1号脚所在的位置，其实反色的ST标着对应的也是marker。

<img src="image-20210207165935055.png" alt="image-20210207165935055" style="zoom:10%;transform:rotate(270deg);" />

在不带载的情况下，EH输出大约为0.5V以下。暂时不上LED了，LED允许电压普遍在2.5V 20mA左右，可能会BOOM。下个版本加电阻吧。