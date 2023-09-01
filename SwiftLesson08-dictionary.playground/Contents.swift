//swiftLesson08

//let dict : [String: String] = ["машина": "car", "мужик": "man"] // [key: value]
//let dict2 : [Int: String] = [0: "car", 1: "man"]
//let dict3 : Dictionary<String, Double> = ["a": 2.0]
//dict2[1]
//man

var dict = ["машина": "car", "мужик": "man"]

dict["мужик"] //man

dict.count //2
dict.isEmpty //false

var dict3: [String: String] = [:] //create empty dictionary
dict3.count //0
dict3.isEmpty //true

dict["комп"] = "computer" //computer

dict //["машина": "car", "мужик": "man", "комп": "computer"]

Array(dict.keys) //["машина", "мужик", "комп"] порядок вывода элементов не соответсвует их вводу. Dictionary не упорядочен.
Array(dict.values) //["car", "man", "computer"]

/*
dict["комп"] = "mac"

dict // ["мужик": "man", "машина": "car", "комп": "mac"]
*/

dict.updateValue("mac", forKey: "комп") //"computer"
dict //["машина": "car", "мужик": "man", "комп": "mac"]

//let copm : String? = dict["комп"] //mac

if let comp = dict["комп2"] { //optional binding
    print("\(comp)")
} else {
    print("no value for key комп2")
}
//no value for key комп2

//dict["мужик"] = nil

//dict //["комп": "mac", "машина": "car"]

/*
dict.removeValue(forKey: "мужик") //возвращает значение того, что мы удаляем
dict //["машина": "car", "комп": "mac"]

dict = [:] //[] - delete all keys and values
dict.isEmpty //true

dict["hello"] = "world"

dict //["hello": "world"]
*/

for key in dict.keys {
    print("key = \(key), value = \(String(describing: dict[key]))") // The usage of String(describing:) for the value ensures that even if the value is optional, it will be safely converted to a string for printing.
}
/*
 key = машина, value = Optional("car")
 key = мужик, value = Optional("man")
 key = комп, value = Optional("mac")
 */

for (key, value) in dict {
    print("key = \(key), value = \(value)")
}
/*
 key = мужик, value = man
 key = машина, value = car
 key = комп, value = mac
 */

// HomeWork
// Task1
// Create dictionary of 5 student list. Key is fist name and surname. Value is his examination grade.
var students : [String: Int] = [:]
students.count //0
students.isEmpty //true

students["Ivan Ivanov"] = 5
students["Elena Petrova"] = 4
students["Alex Shumaher"] = 3
students["Olga Gdanova"] = 4
students["Dmitry Gorbunov"] = 2

print(students)
// ["Alex Shumaher": 3, "Ivan Ivanov": 5, "Elena Petrova": 4, "Olga Gdanova": 4, "Dmitry Gorbunov": 2]

students.count //5
students.isEmpty //false

// change grade for two students. They repassed exam.

// students["Alex Shumaher"] = 5
// students["Dmitry Gorbunov"] = 4

students.updateValue(5, forKey: "Alex Shumaher")
students.updateValue(4, forKey: "Dmitry Gorbunov")
print(students)
// ["Alex Shumaher": 5, "Dmitry Gorbunov": 4, "Ivan Ivanov": 5, "Elena Petrova": 4, "Olga Gdanova": 4]

// arrived two students yet. Add them in to a dictionary
students["Petr Ivanov"] = 4
students["Evgenii Tolstoii"] = 5

print(students)
// ["Petr Ivanov": 4, "Evgenii Tolstoii": 5, "Dmitry Gorbunov": 4, "Alex Shumaher": 5, "Elena Petrova": 4, "Ivan Ivanov": 5, "Olga Gdanova": 4]

// Two students went. Remove them from the dictionary.
students["Alex Shumaher"] = nil

print(students)
// ["Petr Ivanov": 4, "Evgenii Tolstoii": 5, "Ivan Ivanov": 5, "Elena Petrova": 4, "Olga Gdanova": 4, "Dmitry Gorbunov": 4]
var removeStudent = "Dmitry Gorbunov"

if let removedValue = students.removeValue(forKey: removeStudent) {
    print("The removed student name is \(removeStudent).")
} else {
    print("The student dictionary doesn't contain a value for \(removeStudent).")
}

print(students)
// ["Evgenii Tolstoii": 5, "Petr Ivanov": 4, "Elena Petrova": 4, "Ivan Ivanov": 5, "Olga Gdanova": 4]

// calculate total grade of students group

var totalGrade = 0
var averageGrade: Double = 0

for i in students.values {
    totalGrade += i
}

print(totalGrade) //22

//calculate average grade of students group
averageGrade = Double(totalGrade) / Double(students.count)

print(averageGrade) //4.4

// Task2
// Crate dictionary key month and value days in month [String: Int]
// Use loop in keys array. Print pair key plus value for each key from array.
let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
let days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
var monthDict: [String: Int] = [:]

for (index, month) in months.enumerated() {
    let day = days[index]
    monthDict[month] = day
}

print(monthDict)
// ["Aug": 31, "Feb": 28, "Jun": 30, "Apr": 30, "Mar": 31, "May": 31, "Sep": 30, "Nov": 30, "Jan": 31, "Jul": 31, "Dec": 31, "Oct": 31]

// Task3
// Chess
// Create Dictionary where key is String and value is Bool
// Add 64 pairs. Use loop in loop
// First array is letters a...h. Second array is digits 1...8 for each letter from first array

var chess: [String: Bool] = [:]
var letters = [Character]()
var digits = [Int]()
let alphabet = Array("abcdefghijklmnopqrstuvwxyz")



for var i in digits.count..<8 {
    i += 1
    digits.append(i)
    for digits in alphabet {
            letters = alphabet
    }
}
print(digits)
print(letters)

