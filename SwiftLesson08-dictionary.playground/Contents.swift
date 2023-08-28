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


//homeWork

//task1
//Create dictionary of 5 student list. Key is fist name and surname. Value is his examination grade.
//для пары студентов повысить оценку (рни пересдлали экзамен)
//пришли еще два студента, добавить их в этот словарь
//два студента ушли, их нужно убрать
//посчитать общий балл всей группы
// посчитать средний балл (гуглить)

//task2
//Crate dictionary key month and value days in month [String: Int]
//вывести на экран с помощью цикла с тюплом
//использовать цикл и пройтись по массиву ключей, и для каждого массива ключа брали значение из словаря и выводили пару

//task3
//шахматы
//создать словарь ключ это адрес ячейки String, а ключ Bool
// 64 пары
//  испольхзовать цикл в цикле
// один массив это буковки
// для каждой букцы другой цикл от 1 до 8
//
