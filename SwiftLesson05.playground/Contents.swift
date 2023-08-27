//let total = ((5 + 6) - (8 * 3)) - (5 / 10) // + ++5 + --7 - 5-- + 7++
// -13

let div = 9 / 3
// 3
let rest = 10 % 3
// 1

var small : UInt8 = 0xff
// 255

// small = 0
// small = small -1

// &+ &* &/ &- &%
small = small &+ 5
// 260
// & переполнение

let str = "Hi, " + "there!"

// >, <, >=, <=, ==, !=, ===, !==

let a = 5
let b = 3

if 5 != 6 {
    print("yes")
    // yes
} else {
    // print("no") - Will never be executed
}

var c : Int
/*
if a < b {
    c = a
} else {
    c = b
}
*/

c = a < b ? a : b

let text = "123"
let n = Int(text)
/*
// force unwrapping
if n != nil {
    c = n!
} else {
    c = 0
}
*/
/*
// optional binding
if let opt = n {
    c = opt
} else {
    c = 0
}
*/

c = n ?? 0
// если n = nil, то n вернет 0
// если n != nil, автоматически пройдет unwrap

var sum = 5
sum = sum + 1
sum += 1

// --sum
// sum
// sum++

// --sum
// sum--

var good = true
// true
good = !good
// false

// && = *, || = +

if good  {
    print("good")
} else {
    print("bad")
    // bad
}

/*
true && true = true
true && false = false
false && true = false
false && false = false

true || true = true
true || false = true
false || true = true
false || false = false
*/

let i = 5
let j = 6
let k = 7
let m = 8

if (i < 3) && (j > k) && ((n != k) || m > i) {
    
}

// range
0...5
0..<5

for i in 0...5 {
    print("\(i)")
    /*
     0
     1
     2
     3
     4
     5
     */
}

for i in 0..<5 {
    print("\(i)")
    /*
     0
     1
     2
     3
     4
     */
}

/*
задача 1
 посчитать колво секудно от начала года до вашего др
 */

// first dicision
let secInOneMin = 60
let minInOneHour = secInOneMin * 60
let hoursInOneDay = minInOneHour * 24
let secToMyBirtday = hoursInOneDay * 51
print(secToMyBirtday)
// 4406400

// second dicision
let xx = 51*24*60*60
print(xx)
// 4406400

// third dicision
// 1. создать tuple с двенадцатью элементами типа Int для каждого месяца в году
var year : (jan:Int, feb:Int, mar:Int, apr:Int, may:Int, jun:Int, jul:Int, aug:Int, sep:Int, oct:Int, nov:Int, dec:Int)

// 2. присвоить значение кол-ву дней в месяце к каждому элементу тюпла
year.jan = 31
year.feb = 28
year.mar = 31
// ect..

// 3. создать константу равную кол-ву секунд в сутках
let secInOneDay = 86400
// let s = 24*60*60

// 4. создать константы в которых будет храниться дата и месяц рождения
let day = 20
// day birthday
let mon = 2
// month birthday

// 5. посчитать какой по счету день в году этот день рождения
let daysToMyBirhday = year.jan + day
print(daysToMyBirhday)
// 51

// 6. перемножить полученное в пунте 3 и 5
var secToMyBirhday = daysToMyBirhday * secInOneDay
print(secToMyBirhday)
// 4406400

/*
 задача 2
 посчитайте в каком квартале вы родились
 */

let myBirthdayMonth = 2

if myBirthdayMonth <= 3 {
    print("first")
    // first
} else if myBirthdayMonth <= 6 {
    print("second")
} else if myBirthdayMonth <= 9 {
    print("third")
} else if myBirthdayMonth <= 12 {
    print("fourth")
}
 
 /*
 задача 3
 заменть все что в комментарии на константы и разобраться в порядке выполнения арефметических выражений
 разобраться в префиксе и постфиксе
 let total = ((5 + 6) - (8 * 3)) - (5 / 10) // + ++5 + --7 - 5-- + 7++
*/
 
let five = 5
let six = 6
let eight = 8
let three = 3
let ten = 10

let total = ((five + six) - (eight * three) - (five / ten))

print(total)
// -13

/*
 задача 4
есть шахматная достка
 в ней 64 клетки 8*8 (по вертикали 1...8 и по горизонтали 1...8)
 указать какое поле белое, какое черное
*/

/*
//Task 3
let point = (x: 1, y: 1)
if (point.x < 8 && point.x > 0) && (point.y < 8 && point.y > 0) {
    var variableToCalculate = (point.x + point.y) % 2
    if variableToCalculate == 0 {
        print("This is the white checkerboard")
    } else {
        print("This is the black checkerboard")
    }
} else {
    print("error")
}
*/

var point = (x: 1, y: 1)
if (point.x < 8 && point.x > 0) && (point.y < 8 && point.y > 0) {
    var temp = (point.x + point.y) % 2
    if temp == 0 {
        print("White")
        // White
    } else {
        print("Black")
    }
} else {
    print("Error")
}
