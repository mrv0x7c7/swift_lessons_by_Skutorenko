// продажи
/*
50 + 20 = 70
10 - 10 = 0
0
*/

/*
//server request
is it Saturday?
 
true / false / nil
*/

/*
Петя в кармане 5 яблок - 5
Вася нет крманов
*/

var apples : Int? = 5

// apples = nil

/*
 You can use an if statement to find out whether an optional contains a value by comparing the optional against nil. You perform this comparison with the “equal to” operator (==) or the “not equal to” operator (!=).
 */

// Forced Unwrapping
if apples == nil {
    print("nil apples")
} else {
    //print(apples)
    var a = apples! + 2
    print(a)
    // 7
}

// Optional Binding
if var number = apples {
    number = number + 2
} else {
    print("nil apples")
}
// 7

let age = "60"
let ageInt = Int(age)

if ageInt != nil {
    let ageNumber = ageInt!
    // Forced Unwrapping
}
if let ageNumber = ageInt {
    ageNumber
}

// Int
// Int? - An optional Int is written as Int?, not Int.
// Int! - unwrap

var apples2 : Int! = nil
apples2 = 2
apples2 = apples2 + 5

// HomeWork
// Task 1
// 5 строковых констант. Какие-то из них будут состоять только из цифр, и какие-то из цифр и букв или
// просто буквы.
// Найти сумму всех констант приведя их к Int (только тех, которые Int)
// Некоторые константы нужно перевести через optional binding, и некоторые force unwrap

let v = "10"
let w = "a4"
let x = "3"
let y = "7"
let z = "abc"
var sum = 0

if Int(v) != nil { // force unwrap
    let vInt = Int(v)!
    print("v equal \(vInt)")
    // v equal 10
    sum = vInt
    // 10
}

if let w = Int(w) { // optional binding
    print("w equal \(w)")
    sum = w
} else {
    print("It's not an integer")
}
// It's not an integer

if Int(x) == nil { // force unwrap
    print("x equal nil")
} else {
    let xInt = Int(x)!
    print("x equal \(xInt)")
    // x equal 3
    sum += xInt
    // 13
}

if let yInt = Int(y) { // optional binding
    print("y equal \(yInt)")
    // y equal 7
    sum += yInt
    // 20
} else {
    print("It's not aninteger")
}

if let zInt = Int(z) { // optional binding
    print("z equal \(zInt)")
    sum += zInt
} else {
    print("It's not an integer")
    // It's not an integer
}

print("This is sum of all integers \(sum)")
// This is sum of all integers 20

// Задание 2
// мы получаем tuple от server response, и он может прийти с тремя параметрами.
// первый параметр это stasus code (от 200 до 300) int
// второй параметр message типа опциональная строка
// третий параметр error message тоже опциональная строка

// если статус код от 200 до 300 исключительно
// тогда вы должны показать message
// если статус в другом диапозоне, то error message
 

var serverResponse : (Int, String?, String?) = (statusCode:200, message:"Ok, You're connecting to server.", errorMessage:"Error.")
var (statusCode, message, errorMessage) = serverResponse

// int не optional - его не нужно проверять
// if statusCode == nil {
    //print("The nil value")
//} else
if statusCode >= 200 && statusCode < 300 {
    print("\(message!)" + "Status code is \(statusCode)")
    // Ok, You're connecting to server.Status code is 200
} else {
    print("\(errorMessage!)" + " Status code is \(statusCode)")
}
 
// создать еще один такой же tuple
// в нем  статус кода нет
// один из опциональных месаджей всегда nil,
// а один из них всегда содержит что-то
// Разобраться кто из них что содержит и показать соответсвующую строку

var serverRes : (Int?, String?, String?) = (statusCode1:nil, message1:nil, errorMessage1: "Error.")
var (statusCode1, message1, errorMessage1) = serverRes

if statusCode1 == nil {
    print("The nil value")
    // The nil value
} else if statusCode1! >= 200 && statusCode1! < 300 {
    print("\(message1!)" + "Status code is \(statusCode1!)")
} else {
    print("\(errorMessage1!)" + " Status code is \(statusCode1!)")
}

 /*
 создать tuple студента с тремя параметрами (имя, номер машины, оцена за пердыдущую контрольную)
 Все данные в этом tuple должны быть nil (пустой tuple)
 Создать 5 тюплов для 5 студентов
 Сначала заполнить имена этих студентов
 Если у студента есть машина, то добавить номер машины. Если нету машины, не добавлять.
 Далее добавить результат контрольной от 0 до 5. Если результат есть, хотя бы нулевой, то добавить. Если студент не писал контрольную, то это будет nil

далее вывести print всех этих тюплов, и описать имя студента, есть ли у него машина, какой у нее номер если она есть. был ли он на контрольной, и какая оценка если он на ней был.
использовать как optional bining, так и  forced wraping
*/

var student1 : (name:String?, carNumber:String?, grade:Int?)
var student2 : (name:String?, carNumber:String?, grade:Int?)
var student3 : (name:String?, carNumber:String?, grade:Int?)
var student4 : (name:String?, carNumber:String?, grade:Int?)
var student5 : (name:String?, carNumber:String?, grade:Int?)

student1.name = "Alex"
student2.name = "Maria"
student3.name = "Mike"
student4.name = "Abby"
student5.name = "David"

student1.carNumber = "a123bc45"
student2.carNumber = nil
student3.carNumber = "d426jk75"
student4.carNumber = "o777o77"
student5.carNumber = nil

student1.grade = 5
student2.grade = 4
student3.grade = nil
student4.grade = 3
student5.grade = nil

if var name = student1.name {
    if student1.name == nil {
        print("First student name was not found.")
    } else {
        print("First students name is \(name).")
        // First students name is Alex.
    }
    if student1.carNumber == nil {
        print("\(name) hasn't a car.")
    } else {
        print("\(name)'s car number is \(student1.carNumber!).")
        // Alex's car number is a123bc45.
    }
    if student1.grade == nil {
        print("\(name) was absent from the exam.")
    } else {
        print("\(name)'s grade on the last exam is \(student1.grade!).")
        // Alex's grade on the last exam is 5.
    }
}

if var name = student2.name {
    if student2.name == nil {
        print("Second student name was not found.")
    } else {
        print("Second students name is \(name).")
        // Second students name is Maria.
    }
    if student2.carNumber == nil {
        print("\(name) hasn't a car.")
        // Maria hasn't a car.
    } else {
        print("\(name)'s car number is \(student2.carNumber!).")
    }
    if student2.grade == nil {
        print("\(name) was absent from the exam.")
    } else {
        print("\(name)'s grade on the last exam is \(student2.grade!).")
        // Maria's grade on the last exam is 4.
    }
}

if var name = student3.name {
    if student3.name == nil {
        print("Third student name was not found.")
    } else {
        print("Third students name is \(name).")
        // Third students name is Mike.
    }
    if student3.carNumber == nil {
        print("\(name) hasn't a car.")
    } else {
        print("\(name)'s car number is \(student3.carNumber!).")
        // Mike's car number is d426jk75.
    }
    if student3.grade == nil {
        print("\(name) was absent from the exam.")
        // Mike was absent from the exam.
    } else {
        print("\(name)'s grade on the last exam is \(student3.grade!).")
    }
}

if var name = student4.name {
    if student4.name == nil {
        print("Forth student name was not found.")
    } else {
        print("Forth students name is \(name).")
        // Forth students name is Abby.
    }
    if student4.carNumber == nil {
        print("\(name) hasn't a car.")
    } else {
        print("\(name)'s car number is \(student4.carNumber!).")
        // Abby's car number is o777o77.
    }
    if student4.grade == nil {
        print("\(name) was absent from the exam.")
    } else {
        print("\(name)'s grade on the last exam is \(student4.grade!).")
        // Abby's grade on the last exam is 3.
    }
}

if var name = student5.name {
    if student5.name == nil {
        print("Fifth student name was not found.")
    } else {
        print("Fifth students name is \(name).")
        // Fifth students name is David.
    }
    if student5.carNumber == nil {
        print("\(name) hasn't a car.")
        // David hasn't a car.
    } else {
        print("\(name)'s car number is \(student5.carNumber!).")
    }
    if student5.grade == nil {
        print("\(name) was absent from the exam.")
        // David was absent from the exam.
    } else {
        print("\(name)'s grade on the last exam is \(student5.grade!).")
    }
}
