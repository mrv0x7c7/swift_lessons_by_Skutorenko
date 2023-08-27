// let array : Array<String >= ["a", "b", "c", "d"]
// let array [String] = ["a", "b", "c", "d"]
let constArray = ["a", "b", "c", "d"]

constArray.count
// 4

var array = [String]()
// инициализировали пустой массив типа String

/*
if array.count == 0 {
    print("array is empry")
}
// ниже актуальный вариант
*/

if array.isEmpty {
    print("array is empty")
}


array += constArray
// ["a", "b", "c", "d"]

array += ["e"]
// ["a", "b", "c", "d", "e"]

array.append("f")
// ["a", "b", "c", "d", "e", "f"]

var array2 = array
array
// ["a", "b", "c", "d", "e", "f"]
array2
// ["a", "b", "c", "d", "e", "f"]

array2[0] = "1"
array
// ["a", "b", "c", "d", "e", "f"]
array2
// ["1", "b", "c", "d", "e", "f"]

/*
array[1..<4] = ["0"]
// вырезали диапозон значений от 1 до 4 (b, c, d,)
array
// ["a", "0", "e", "f"]
*/

array

array.insert("-", at: 3)
// ["a", "b", "c", "-", "d", "e", "f"]
array.remove(at: 3)
// ["a", "b", "c", "d", "e", "f"]

let test = Array(repeating: 100, count: 10)
//[100, 100, 100, 100, 100, 100, 100, 100, 100, 100]

let money = [100, 1, 5, 20, 1, 50, 1, 1, 20, 1]

/*
for var i = 0; i < 9; i++ {
    print("i = \(i)")
}
// error: C-style for statement has been removed in Swift 3
 */

var sum = 0
for i in 0..<money.count {
    print("index = \(i) value = \(money[i])")
    sum += money[i]
}
/*
 index = 0 value = 100
 index = 1 value = 1
 index = 2 value = 5
 index = 3 value = 20
 index = 4 value = 1
 index = 5 value = 50
 index = 6 value = 1
 index = 7 value = 1
 index = 8 value = 20
 index = 9 value = 1

*/

sum
// 200

sum = 0

var index = 0
for value in money {
    print("index = \(index) value = \(value)")
    sum += value
    index += 1
}
sum

/*
 index = 0 value = 100
 index = 1 value = 1
 index = 2 value = 5
 index = 3 value = 20
 index = 4 value = 1
 index = 5 value = 50
 index = 6 value = 1
 index = 7 value = 1
 index = 8 value = 20
 index = 9 value = 1
 */

sum = 0

for (index, value) in money.enumerated() {
    print("index = \(index) value = \(value)")
    sum += value
}
sum
// 200
/*
index = 0 value = 100
index = 1 value = 1
index = 2 value = 5
index = 3 value = 20
index = 4 value = 1
index = 5 value = 50
index = 6 value = 1
index = 7 value = 1
index = 8 value = 20
index = 9 value = 1
*/


//Home Work
// Task 1
// 1.1 - Создать массив в который входит 12 месяцев ( кол дней месяце )
let days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

// 1.2 - Создать массив с именами 12 месяцев
let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

// 1.3 - с помощью цикла forIn вывести print имени месяца из одного массива, и кол-во дней в этих месяцах из другого массива
for (monthIndex, daysInMonth) in days.enumerated() {
    let monthName = months[monthIndex]
    print("\(monthName) is \(daysInMonth) days")
}
/*
 Jan is 31 days
 Feb is 28 days
 Mar is 31 days
 Apr is 30 days
 May is 31 days
 Jun is 30 days
 Jul is 31 days
 Aug is 31 days
 Sep is 30 days
 Oct is 31 days
 Nov is 30 days
 Dec is 31 days
 */

/*
- 1.4  создать массив тюплов с параметрами, в котором первый параметр это
название месяцев, и второй параметр кол-во дней в этом месяце. Повторить предыдущее
задание используя массив тюпллов.
*/

/*
let monthArray : [(name: String, day: String)] = [("january", "31"), ("february", "28"), ("march", "31"), ("april", "30"),
                                                   ("may", "31"), ("june", "30"), ("july", "31"), ("august", "31"),
                                                   ("september", "30"), ("october", "31"), ("november", "30"), ("december", "31")]
for i in monthArray {
    print("\(i.name) is \(i.day) days")
}
*/
/*
 january is 31 days
 febrary is 28 days
 march is 31 days
 april is 30 days
 may is 31 days
 june is 30 days
 july is 31 days
 august is 31 days
 september is 30 days
 october is 31 days
 november is 30 days
 december is 31 days
 */

var tuples = [(String, Int)]()
for i in 0..<days.count {
    var month = (month:months[i], day:days[i])
    tuples.append(month)
}
print(tuples)
// [("Jan", 31), ("Feb", 28), ("Mar", 31), ("Apr", 30), ("May", 31), ("Jun", 30), ("Jul", 31), ("Aug", 31), ("Sep", 30), ("Oct", 31), ("Nov", 30), ("Dec", 31)]


// 1.5 - вывести кол-во дней в месяце, но задом наперед  i--
let daysInMonth = Array(1...31)
var resultString = ""
for i in daysInMonth.reversed() {
    resultString += "\(i) " // concatenate strings. resulst in one string version
    //print(number)
}
print(resultString) // resulst in one string version
// 31 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1

// 1.6 - посчитать с помощью массива сколько дней до дня рождения от нового года
let birthday = (month:2, day:20)
var toMyBirhtday = 0

for i in 0..<(birthday.month - 1) {
    toMyBirhtday += days[i]
}
toMyBirhtday += birthday.day

print(toMyBirhtday) // 51

/*
let birthday = (month:"Feb", day:20)
var toMyBirhtday = 0

for (index, month) in months.enumerated() {
    if month == birthday.month {
        toMyBirhtday += birthday.day
        break
    }
    toMyBirhtday += days[index]
}

print("from the beginning of the year to my birhday \(toMyBirhtday) days")
// from the beginning of the year to my birhday 51 days
*/


/*
Task 2
- Create array Optional Int, заполнить константы (какие-то Int, а какие-то nil)
- в цикле посчитать сумму
    - в первом случае использовать optional binding
    - во втором force unwrapping
    - в третьем поератор ??
*/

let optArray: [Int?] = [1, nil, 54, 95, nil]
sum = 0
for i in optArray {
    if let value = i {
        sum += value
    }
}
print("sum with optional binding is \(sum)")

sum = 0
for i in optArray {
    if i == nil {
        sum += 0
    } else {
        sum += i!
    }
}
print("sum with force unwrap is \(sum)")

sum = 0
for i in optArray {
    let c = i ?? 0
    sum += c
}

print("sum with coalescing is \(sum)")


/*
Task 3
 - Crate array String Alphabet
 - в цикле пройти по порядку по каждому символу
 - создать пустой массив строк
 - берем char, переводим в строку и добавляем его в этот массив (добавлять таким образом,
 чтобы получился массив строк, и алфавит в обратном порядке)
 
*/

// let alphabet: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
var stringArray: [String] = []

for char in alphabet {
    stringArray.insert(String(char), at: 0) // каждый новый символ записывается в нулевой индекс
}
print(stringArray)
// ["z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p", "o", "n", "m", "l", "k", "j", "i", "h", "g", "f", "e", "d", "c", "b", "a"]
