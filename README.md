# MetaMaskApp简介

### 项目目录结构
- Data:负责本地数据的加载
- Marco:项目常用的宏
- Model:项目用到的数据模型，如首页的列表数据模型
- Page:页面集合
- Resources:本地资源，如本地json数据

### UI部分
- 主要使用Swift UI进行实现
- 布局参考MetaMaskApp的界面布局，部分切图从MetaMaskApp的ipa包中获取
- 实现的界面布局主要为：首页、接收、发送和交换等

### 数据部分
- 加载的数据为本地json数据，存放路径为```../MetaMask->Resources->mmCoinListData.json```
- 通过工具类```MMCoinListData.swift```对本地json进行加载

### 单元测试
- 由于没有涉及到业务逻辑，单测部分比较简单，当前只测试了数据的正确性，后续可以根据项目的业务功能增加

### 第三方库
- SwiftUI-WRNavigationBar:提供便捷入口自定义导航条(github:https://github.com/wangrui460/SwiftUI-WRNavigationBar)
- SheetKit:管理模态弹窗、全屏弹窗等以及提供目前Swift UI尚未支持的透明功能(github:https://github.com/fatbobman/SheetKit)

### 运行与调试
在项目根目录中执行```pod update```，并打开MetaMask.xcworkspace即可

### 总结
- 个人对Swift UI声明式编程不太熟悉，没有在实际项目中用过，在编码风格与flutter相似，遇到问题主要通过搜索引擎帮助解决
- 编码过程中过程中有些地方并不能很好支持，需要了解原理后配合UIKit进行支持
- 在iOS15版本中有较大的更新，减少历史版本存在的问题，进一步降低了开发难度
---
