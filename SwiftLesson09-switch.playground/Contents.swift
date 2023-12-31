import UIKit

//SwiftLesson-09-Switch

mainLoop: for _ in 0...1000 {
    
    for i in 0..<20 {
        if (i < 15) {
            //continue
        }
        if i == 10 {
            break mainLoop
        }
        print(i)
        /*
         0
         1
         2
         3
         4
         5
         6
         7
         8
         9
         */
    }
}

var age = 66
var name = "Alex"

switch age {
case 0...16:
    print("scoolboy")
case 17...21:
    print("student")
case 22...50: break
case 51, 56, 57, 60:
    print("senior")
    
default: break
}
//senior

switch name {
case "Alex" where age < 50:
    print("Hi buddy!")
case "Alex" where age >= 50:
    print("I don't know you")
default: break
}
//I don't know you

let tuple = (name, age)

switch tuple {
case ("Alex", 60): 
    print("Hi Alex 60")
case ("Alex", 59): 
    print("Hi Alex 59")
case (_, let number) where number >= 65 && number <= 70: 
    print("Hi old man")
case ("Alex", _): 
    print("Hi Alex")

default: break
}
//Hi old man

let point = (5,-6)

switch point {
    
case let (x,y) where x == y:
    print("x == y")
case let (x,y) where x == -y:
    print("x == -y")
case let (_,y) where y < 0:
    print("y < 0")
    
default: break
}
//y < 0


let array : [Any] = [5, 5.4, Float(5.4)]

switch array[2] {
case _ as Int:
    print("Int")
case _ as Float:
    print("Float")
case _ as Double:
    print("Double")
        
default: break
}
//Float




//Home work

//Task 1

//Create a String with any text for 200 chars
let someString = "Today is a beautiful day, with temperatures around 75°F. Let's go for a picnic at the park and enjoy the sunshine! Don't forget to bring some snacks and iced tea. It's a perfect day for outdoor fun. 12345"

//Create a loop with a switch. Calculate how many vowels, consonants, numbers and characters are in the string
var vowelsCounter = 0
var consonantsCounter = 0
var charactersCounter = 0
var numbersCounter = 0

for i in someString {
    switch i {
    case "a", "e", "i", "o", "u":
        vowelsCounter += 1
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
        consonantsCounter += 1
    case "@", "#", "$", "%", "&", "!", "?", "*", "+", "=", ".", ",", "°":
        charactersCounter += 1
    case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
        numbersCounter += 1
        
    default: break
    }
}
print("someString has \(someString.count) chars, \(vowelsCounter) vowels, \(consonantsCounter) consonants, \(charactersCounter) characters and \(numbersCounter) numbers.")
//someString has 204 chars, 58 vowels, 88 consonants, 6 characters and 7 numbers.


//Task 2
//Create a switch that will check a man's age and output the name of this stage of life.
//
var inputUserAge = 32

switch inputUserAge {
case 0...2:
    print("Infancy")
case 2...12:
    print("Childhood")
case 12...18:
    print("Adolescence")
case 18...25:
    print("Youth")
case 25...55:
    print("Adulthood")
case 55...70:
    print("Elderly Age")
case 70...122:
    print("Old Age")
    
default: break
}
//Adulthood

//Task 3
//есть студент, у него есть ФИО (3 строки)
//в одном свитче если его имя начинается например с A или с O то вы должны обращаться к студенту по имени
//если же у него отчество начиается с буквы V или D то обращаться к нему по имени и отчеству
//в противном случае его фамилия начинается с букв  У или Z то обращайтесь к нему только по фамилии
//Если ни одно их вышеописанного не сработает, то образщайтесь к нему по ФИО
//

var nameTuple = (first:"James", middle:"Alan", last:"Hetfield")

switch nameTuple {
case (let first, _, _) where first.hasPrefix("A") || first.hasPrefix("O"):
    print(nameTuple.first)
case (_, let middle, _) where middle.hasPrefix("V") || middle.hasPrefix("D"):
    print("\(nameTuple.first) \(nameTuple.middle)")
case (_, _, let last) where last.hasPrefix("Y") || last.hasPrefix("Z"):
    print(nameTuple.last)
    
default: print("\(nameTuple.first) \(nameTuple.middle) \(nameTuple.last)")
}

//Task 4
//Create sea battlefield 10x10 (use digits or digits with letters)
//var board = (x:1...10, y:1...10)

//Imagine that you have three ships, for example, one with a single deck, one with two decks, and one with four decks.
let shipOne = (x:5, y:8, w:1, h:1)
let shipTwo = (x:2, y:2, w:2, h:1)
let shipThree = (x:6, y:7, w:1, h:3)

//Some of these ships are undamaged, some are damaged, and some have been destroyed.
//You need to create switch that takes a get of points (x, y) as input.
//The switch should return one of three values: "undamaged," "damaged," or "killed."

let checkPoint = (x:6, y:8)

switch checkPoint {
case (x:5, y:8):
    print("kill")
case (x:2...4, y:2):
    print("ship is damaged")
case (x:6, y:7...10):
    print("ship is damaged")
default:
    print("This cell is empty")
}


