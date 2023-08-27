// var str = String()
// var str = ""
var str = "c"

str = str + "a"
str += "b"

/*
var a = 5 // value type
var b = a // reference type

a += 1
b
*/

var str1 = "a"
var str2 = str1

str1
str2

// str1 = ""

str1
str2

str1.isEmpty
// check empty string

let char1 : Character = "x"
// тип Character нужно указывать явно, иначе будет String

for c in "Hello world!"{
    print(c)
}

str1.append(char1)
// добавить символ к строке

let heart = "\u{1F496}"

// var fun : Character = "ъ"

var eAcute : Character = "\u{E9}"
let combinedEAcute : Character = "e\u{301}"

var fun : Character = "ъ\u{301}\u{20dd}"

let funString = "what is this? -> \(fun)"
print(funString)
// what is this? -> ъ́⃝

print(funString.count)
// 18
// длина строки

if funString == "aa" {
   //
} else {
    print("not equal")
    // not equal
}

funString.hasPrefix("What")
funString.hasSuffix("ъ\u{301}\u{20dd}")



// homeWork
// https://youtu.be/KWLCBiEpOF0?t=1981

// opt binding - вспомнить

/*
 if let actualNumber = Int(possibleNumber) {
     print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
 } else {
     print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
 }
 // Prints "The string "123" has an integer value of 123"
*/

// force unwrap - вспомнить
/*
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}
// Prints "convertedNumber has an integer value of 123."
*/

 // ?? - вспомнить

/*
 c = n ?? 0

 // если n = nil, то n вернет 0
 // если n != nil, автоматически пройдет unwrap
*/

// task 1
// посчитать сумму 5 констант с помощью ??
// затем все это выражение записать в строке
// 5 + 2 + nil + 3 + nil = 10
// в первом случае с помощью интерполяции строк
// во втором случае с помощью конктатенации строк

/*
 // Задание 1
 //5 строковых констант. Какие-то из них будут состоять только из цифр, и какие-то из цифр и букв или
 // просто буквы.
 // Найти сумму всех констант приведя их к Int (только тех, которые Int)
 // Некоторые константы нужно перевести через optional binding, и некоторые force unwrap

 let v = "10"
 let w = "a4"
 let x = "3"
 let y = "7"
 let z = "abc"
 var sum = 0

 if Int(v) != nil { // уверен что всегда будет не nil
     let vInt = Int(v)!
     print("v equal \(vInt)")
     sum = vInt
 }

 if let wInt = Int(w) { // optional binding
     print("w equal \(wInt)")
     sum = wInt
 } else {
     print("It's not an integer")
 }

 if x == nil { // force unwrap
     print("x equal nil")
 } else {
     let xInt = Int(x)!
     print("x equal \(xInt)")
     sum += xInt
 }

 if let yInt = Int(y) { // optional binding
     print("y equal \(yInt)")
     sum += yInt
 } else {
     print("It's not aninteger")
 }

 if let zInt = Int(z) { // optional binding
     print("z equal \(zInt)")
     sum += zInt
 } else {
     print("It's not an integer")
 }

 print("This is sum of all integers \(sum)")

 print("")
*/

let v = "nil"
let w = "a4"
let x = "3"
let y = "7"
let z = "abc"
var sum = 0

var vInt = Int(v) ?? 0
print(vInt)
// 0
sum += vInt

var wInt = Int(w) ?? 0
print(wInt)
// 0
sum += wInt

var xInt = Int(x) ?? 0
print(xInt)
// 3
sum += xInt

var yInt = Int(y) ?? 0
print(yInt)
// 7
sum += yInt

var zInt = Int(z) ?? 0
print(zInt)
// 0
sum += zInt

print("This is sum of all integers \(sum)")
// This is sum of all integers 10
print("\(vInt) + \(wInt) + \(xInt) + \(yInt) + \(zInt) = \(sum)")
// 0 + 0 + 3 + 7 + 0 = 10
print(vInt + wInt + xInt + yInt + zInt)
// 10
print(v + w + x + y + z)
// nila437abc

// task 2
// выбрать топ 5 unicode charactes
// посчитать длину строки из этих 5ти characters с помощью countElements

let faceWithTearsOfJoy : Character = "\u{1F602}"
print(faceWithTearsOfJoy)
// 😂

let heavyExclamationMarkSymbol : Character = "\u{2757}"
print(heavyExclamationMarkSymbol)
// ❗

let rocket : Character = "\u{1F680}"
print(rocket)
// 🚀

let bicycle : Character = "\u{1F6B2}"
print(bicycle)
// 🚲

let hourglass : Character = "\u{231B}"
print(hourglass)
// ⌛

let smileString = "my favorite smiles is \u{1F602}\u{2757}\u{1F680}\u{1F6B2}\u{231B}"
print(smileString)
// my favorite smiles is 😂❗🚀🚲⌛
print(smileString.count)
// 27

// task 3
// с помощью цикла for вывести весь англ алфавит маленькими буквами
// найти индекс буквы в алфавите

let alphabet = "abcdefghijklmnopqrstuvwxyz"
var search : Character = "z"
var index = 0

for x in alphabet {
    print(x)
    /*
     a
     b
     c
     d
     e
     f
     g
     h
     i
     j
     k
     l
     m
     n
     o
     p
     q
     r
     s
     t
     u
     v
     w
     x
     y
     z
     */
}

for char in alphabet {
    if search == char {
        print ("\(index)")
        // 25
    }
    index += 1
}
