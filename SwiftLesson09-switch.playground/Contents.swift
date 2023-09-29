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

//Task 3
//есть студент, у него есть ФИО (3 строки)
//в одном свитче если его имя начинается например с A или с O то вы должны обращаться к студенту по имени
//если же у него отчество начиается с буквы V или D то обращаться к нему по имени и отчеству
//в противном случае его фамилия начинается с букв  У или Z то обращайтесь к нему только по фамилии
//Если ни одно их вышеописанного не сработает, то образщайтесь к нему по ФИО
//

var inputFirstName = "Lex"
var inputMiddleName = "Ivanovich"
var inputLastName = "Petrov"

let fullNameArray = ["firstName", "middleName", "lastName"]
var studentNameArray = [inputFirstName, inputMiddleName, inputLastName]

var student_1 = [String: String]()

for (index, key) in fullNameArray.enumerated() {
    let value = studentNameArray[index]
    student_1[key] = value
}
print(student_1)
//["middleName": "Ivanovich", "firstName": "Alex", "lastName": "Petrov"]

if let firstName = student_1["firstName"],
   let middleName = student_1["middleName"],
   let lastName = student_1["lastName"] {
    
    let firstLetterName = String(firstName.prefix(1))
    let firstLetterMiddleName = String(middleName.prefix(1))
    let firstLetterLastName = String(lastName.prefix(1))
    
    switch (firstLetterName, firstLetterMiddleName, firstLetterLastName) {
    case  ("A", _, _), ("O", _, _):
        print(firstName)
    case (_, "V", _), (_, "D", _):
        print("\(firstName) \(middleName)")
    case (_, _, "Y"), (_, _, "Z"):
        print(lastName)
    default:
        print("\(firstName) \(middleName) \(lastName)")
    }
}



 
//Task 4
// поле для морского боя 10х10
//можно использовать цифра или цифры с буквами
//Представьте, что у вас осталось несколько караблей. Некоторые из них подпиты, некоторые из них целы. Нужно создать такой свитч который будет получать тюпл поинт (x,y). Нужно вернуть одно из трех значений: мимо, ранил, убил
