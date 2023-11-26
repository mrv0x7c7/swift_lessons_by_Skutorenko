import UIKit

// DRY

func calculateMoney(inWallet money: [Int], withType type: Int? = nil) -> (total: Int, count: Int) {
    
    var sum = 0
    var count = 0
    
    for value in money {
        
        if type == nil || value == type! {
            sum += value
            count+=1
        }
    }
    return (sum, count)
}

func calculateMoney(inSequence range: Int...) -> Int {
    
    var sum = 0
    for value in range {
        sum += value
    }
        
    return sum
}

let wallet = [100, 5, 1, 5, 5, 20, 50, 100, 1, 1]

let (money, count) = calculateMoney(inWallet: wallet )

money
count

calculateMoney(inWallet: wallet, withType: 100)

calculateMoney(inSequence: 5, 5, 10, 2, 3 ,4, 3, 23, 34, 1, 1)


func sayHi() -> () {
    print("hi")
}

let hi /* : () -> () */ = sayHi

func sayPhrase(phrase: String) -> Int? {
    print(phrase)
    return 0
}

sayPhrase(phrase: "aaa")

let phrase /*: (String) -> Int? */ = sayPhrase

phrase("bbb")

func doSomething(whatToDo: () -> ()) {
    whatToDo()
}

func whatToDo() -> () -> () {
    
    func printSomething() {
        print("hello world!!!")
    }
    
    return printSomething
}

doSomething(whatToDo: sayHi)

let iShouldDoThis = whatToDo()

iShouldDoThis()


// Home work
// Task 1
// Create a function called heart that returns a string with a Unicode heart.
// Additionally, create a couple more functions.
func heart() -> String {
    return "\u{2764}"
}

print(heart())

func greet(person: String) -> String {
    return "Hello, " + person + " \(heart()) " + "!"
}

print(greet(person: "Anna"))

func drink(drinkType: String) -> String {
    return "What do you prefer " + drinkType + "?"
}

print(drink(drinkType: "coffee") + " \u{2615}")

// Combine all these functions into a single print statement using string concatenation.
print("\(greet(person: "Anna")) " + "\(drink(drinkType: "coffee"))" + " \(heart())")

// Task 2
// Chess
// Create a function that takes two parameters, a string and a character,
// for example, 'a5' and 'b6'.
// This function should return the word 'white' or 'black'.
// Return of this function add to variable

func chess (row: String, column: Int) ->  String {

    let characters = "abcdefgh"
    var rowInt = 0
    for i in characters {
        rowInt += 1
        if row == String(i) {
            break
        }
    }
    if rowInt % 2 == column % 2 {
        return "black"
    } else {
        return "white"
    }
}

let result = chess(row: "b", column: 6)
print (result)

// Task 3

// Ctaete array
let numArray = [1, 2, 3, 4, 5]

// Create a function that takes an array and returns the inverse array
func someFunc(num: [Int]) -> [Int] {
    
    var reverseArray = [Int]()
    
    for element in num.reversed() {
        reverseArray.append(element)
    }
    
    return reverseArray
}

let reversedArray = someFunc(num: numArray)
print(reversedArray)

// The same function that takes the sequence

func calculateCash(inSequence range: Int...) -> [Int] {
    
    var reverseCash = [Int]()
    
    for value in range.reversed() {
        reverseCash.append(value)
    }
    
    return reverseCash
}

print(calculateCash(inSequence: 5,10,15,100,1))

// функция принимала secuence и вызывала массив (одна функция выызывает другую)

// Task 4
// создать функцию которая вызывает массив
// разобраться с inOut и изменить значения внутри функции

//Task 5
//Создать функцию которая принимает строку (практика switch), возвращать она будет тоже строку
// Убрать все знаки припенания - можно щаменить из на пробелы
// все гласные заменить на заглавные
// все согласные будут переведены в строчные
// цифры должны заменены на их словесное представление 1 = one
//

