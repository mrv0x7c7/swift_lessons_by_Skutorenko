// Tuples

// let simpleTuple : (Int, String, Bool, Double) = (1, "Hello", true, 2.4)
let simpleTuple = (1, "Hello", true, 2.4)
let (number, greatings, check, decimal) = simpleTuple

print(number)
// 1
print(greatings)
// Hello
print(check)
// true
print(decimal)
// 2.4

let (_, _, check2, _) = simpleTuple
check2
// True

print(simpleTuple.0)
// 1
print(simpleTuple.1)
// Hello
print(simpleTuple.2)
// true
print(simpleTuple.3)
// 2.4

var tuple = (index:1, prase:"Hello", registered:true, latency:2.4)
tuple.index
tuple.prase
tuple.registered
tuple.latency

// change tuple's value
tuple.index = 2
print(tuple.index)
// 2

let a = (x:1, y:2)
var b = (x:2, y:3)
b = a
print("a is \(a), and b is \(b) ")
// a is (x: 1, y: 2), and b is (x: 1, y: 2)

/*
let redColor = "red"
let greenColor = "green"
let blueColor = "blue"
*/
let (redColor, greenColor, blueColor) = ("red", "green", "blue")
print(redColor)
// red
print(greenColor)
// green
print(blueColor)
// blue

let totalNumber = 5
let merchentName = "Alex"
print("\(totalNumber) \(merchentName)")
// 5 Alex
print(totalNumber, merchentName)
// 5 Alex
print(simpleTuple)
// (1, "Hello", true, 2.4)


var tuple1 = (maxPush:20, maxSq:30, maxPull:2)
print(tuple1)

print("pushups = \(tuple1.0),\nsquats = \(tuple1.maxSq), \npullups = \(tuple1.maxPull)")
print("pushups = \(tuple1.maxPush),\nsquats = \(tuple1.maxSq), \npullups = \(tuple1.2)")

var tuple2 = (maxPush:10, maxSq:10, maxPull:1)

var x = (maxPush:20, maxSq:30, maxPull:2)
var y = (maxPush:10, maxSq:10, maxPull:1)
var z = x
x = y
y = z
print("\(x),\n\(y)")
// (maxPush: 10, maxSq: 10, maxPull: 1), (maxPush: 20, maxSq: 30, maxPull: 2)


var difPush = tuple1.maxPush - tuple2.maxPush
var difSq = tuple1.maxSq - tuple2.maxSq
var difPul = tuple1.maxPull - tuple2.maxPull

var tuple3 = (difPush, difSq, difPul)
print("I can do more pushups than Ksenia can do at \(difPush), \nI can do more squats than Ksenia can do at \(difSq), \nI can do more pullups than Ksenia can do at \(difPul).")
// I can do more pushups than Ksenia can do at 10, I can do more squats than Ksenia can do at 20, I can do more pullups than Ksenia can do at 1.
