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

// func heart возвращает строку с юникодом сердечка (создать парочку аналогчиных функций)
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


// создать один print в который будут поступать эти функции и с помощью канкатенации строк сложить какую-то красивую строку

// Task 2
// Шахматы
// Создать функцию которая принимает два параметра строка и символ a5 b6 и она должна вывести слово белая или черная
// нужно забрать значение этой функции в дргую переменную

// Task 3

// Создать массив
// Создать функцию которая будет принимать массив и возвращать массив в обратном порядке
// Аналогичная функция которая принимает sequence

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

