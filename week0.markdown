# week0
How to ask question the smart way  
好好看一下，对以后的工作非常有帮助。

Coding Style 参照  
Google Swift Style Guide  
https://google.github.io/swift/  
写代码的时候养成好的习惯。

关于 Pull request  
commit 的时候按照要求写 commit message。  
'assignment2 modified' 这样的 message 不好。要说明具体的信息。改了什么等等。

发 Pull 的时候可以添加 reviewer。
把 assignees 发给自己，这样可以看到别人的review
记得加上 label。

Apple WWDC  
非常非常有用的素材。有很多非常有用的东西。  
新的技术非常有远见性。可以提前学习。

LLVM 是什么  
是一个 compiler，非常强大。

静态语言 和 动态语言  
静态语言 类型在编译的时候就已经定好了。  
动态语言 不用太在意类型，compiler 会处理。

Swift 最权威的官方手册  
https://swift.org/documentation/#the-swift-programming-language

Dash 软件  
大部分语言的API都可以搜到。非常实用的工具。


Swift 操作技巧  
按住 command 键，用鼠标点击想要查看的元素，可以看到详细信息，非常实用的技巧。

快速查看一个量的 type 的方法  
按住 alt 键，用鼠标点击变量。可以快速查看类型。

import  
UIKit： 所有与UI相关的调用。  
Foundation： 任何基础的东西。  
在 Swift Library 里任何以 NS 开头的库，说明是从 NeXT Service 里延伸过来的。

声名一个变量/常量  
`var variableName = “hello, qiaomenzhuan”`  
`let variableName: String = “hello, qiaomenzhuan”`  

所有的变量都应该使用 **camelCase**

Type Inference  
虽然 Swift 是强类型语言，定义的所有的变量和衡量的时候必须要声明 type。直接赋值也可以，因为 swift 有 type inference。  
具体需要参照 coding style。

Type annotation = 类型声明  
Type Inference = 类型推断

Tuple 元组  

	(value, value2, value3 ..)
	let success = (200, “HTTP OK”)
	// access values in tuple
	debugPrint(success.0)
	debugPrint(success.1)

`===` 用来确定两个东西是否是同一个内存地址。

模式匹配 pattern matching  
case 匹配的值 = 要检查的对象

Week 0 的作业要下周四交