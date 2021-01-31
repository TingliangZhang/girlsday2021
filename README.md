# Girl's Day of 2021 Presents Design
2021年交叉班女生节礼物——名片 设计

智能名片交互hhh



## 外形设计Outline

依据身份证等使用的ISO 7810-2003国际标准中的ID-1：ID-1的规定尺寸为85.60×53.98毫米（3.370×2.125英寸），常用于身份证、银行卡（如提款卡、信用卡）、驾照、个人名片，以及商店发出的忠实顾客卡等。其长宽比与黄金分割（1.618:1）接近。

ISO 7813规范ID-1塑胶银行卡的附加特性，包括0.76毫米厚度，及3.18毫米半径的圆角。

所以设计为

85.60×53.98毫米

3.18毫米半径的圆角

0.76毫米厚度（做0.8mmPCB板）

横向排版



或者用ID-3画成小的钥匙链



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

## NFC线圈

NFC Antenna Generator

https://kbeckmann.github.io/2016/06/19/NFC-Antenna-Generator/

[NFC Antenna Design | RF Design | eDesignSuite](https://eds.st.com/antenna/)