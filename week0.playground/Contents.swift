//: Playground - noun: a place where people can play

import Foundation

var variableName = "hello, qiaomenzhuan"
var variableName2: String = "oh, no..."

// type inference

var hours = 24

var flag = false

var constantx = "hahaha"

constantx = "hihi"

// Type Annotation
var x: Bool
// Type Inference
var xx = 24

struct Dummy {
    let a: String
    let b: Bool
}
let haha = Dummy(a: "", b: false)
// haha.a = "aaa"

let hahaha = "😭"
// Tuple
// (value1, value2, value3...)
let success = (200, "HTTP OK")
// access values in tuple
debugPrint(success.0)

// Anther way to use Tuple
let successWithNames = (statusCode: 200, responseString: "OK")
debugPrint(successWithNames.statusCode)

// 解压 tuple
let (code, response) = successWithNames
debugPrint(code)
debugPrint(response)

// use _ to access 1 value in tuple.
let (_, anotherResponse) = successWithNames
debugPrint(anotherResponse)

//
let tuple1 = (1, 2, 3, 4)
let tuple2 = (1, 2, 3, 4)
tuple1 == tuple2  // will run
// tuple1 === tuple2 will not run
// == 判断值相等
// === identity oprator 判断是不是同一个内存地址

let mod = 4 % 3
let result = 4 / 3

// 复合运算符
var b: Int = 0
b += 10 // b = b + 10
b -= 1
b /= 10
b *= 10
b %= 10

// 比较操作符
b == 0
b <= 0
b >= 0
b != 0

if b > 0 {
    
} else {
    
}

let ok = true
// 三元操作赋
// condition ? expr1 : expr2
let isAlexHandsome = ok ? "YES" : "NO"

// 区间操作赋
// 包含5
for index in 1...5 {
    debugPrint(index)
}
// 不包含
for index in 1..<5 {
    debugPrint(index)
}

// Optional
var userInput: String?
// nil colaescing Swift 独家
let value = userInput ?? "not input given"

var light = "red"
if light == "red" {
    
} else if light == ""{
    
}
else if light == "dada" {
    
} else {
    
}
switch light {
case "red":
    debugPrint("red")
// exhaustive
default:
    debugPrint("invalid")
}
// Swift 里的 switch 语句不用手动加上 break

// 循环
let collection: [Any] = ["🎮", "🎯", true, "test", 23]
for element in collection {
    debugPrint("\(element)")        // "\()" = toString 把 Object 快速打印出来
}

// 模式匹配
let origin = (x: 0.0, y: 0.0)
let pointA = (x: 1.0, y: -1.0)
// 一般的判断是否相等
if pointA.x == origin.x && pointA.y == origin.y {
    debugPrint("same")
}
// 用模式匹配的方式 pattern match
// case 匹配的值 = 要检查的对象
// **重点复习一下**
if case (0.0, 0.0) = pointA {
    debugPrint("same point")
}

switch pointA {
case (_, 0.0):
    debugPrint("y matched with 0.0")
case (0.0, _):
    debugPrint("y matched with 0.0")
case (0.0, let y):
    debugPrint("y value is \(y)")
default:
    debugPrint("OK..")
}

// 把模式匹配运用在循环里
let array1 = [1, 2, 3, 4, 5, 5]
for case 5 in array1 {
    debugPrint("found")
}

// Array
// 在建立某些类型的 array 的时候，需要用这种方法
var array_1: Array<Int> = [1, 2, 3]
// 也可以这样，一般情况下用这种方法
var array_2 = [1, 2, 3]

array_1.isEmpty
array_1.count
array_1.last
// 绝对不要用 array_1[4]，非常不安全，会崩溃，用 array_1.last 比较安全

array_1[0...1]
array_1[0...array_1.count - 1]

array_1.forEach { debugPrint($0) }
array_1.insert(0, at:1)
array_1 += [123, 1231]
array_1.remove(at:1)

// Optional
let number: Int? = 2
if let value = number, value % 2 == 0 {     // 先拆开看一看，有值的话求余
    debugPrint("\(value)")
} else {
    debugPrint("nothing inside")
}
// ??
let value2 = number ?? 0     // 如果 number 有值，赋值给value，否则value = 0

// 硬上弓，危险
debugPrint("\(number!)")    // 告诉编译器 我很确定这里有值，强制取出来。如果没有的话，程序会崩

let anotherNumber: Int?? = nil // 外面又套了一层，这样的话需要经过两次解包
