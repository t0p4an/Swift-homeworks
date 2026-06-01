import UIKit

// Создать 10 разных Dictionary с разными типами данных

let dicOne: [String: Int] = ["Один": 1, "Два": 2, "Три": 3]
let dicTwo: [String: String] = ["Один": "Один", "Два": "Два", "Три": "Три"]
let dicThree: [String: Bool] = ["Один": true, "Два": false, "Три": true]
let dicFour: [String: Double] = ["Один": 1.0, "Два": 2.0, "Три": 3.0]
let dicFive: [Int: Double] = [1: 1.0, 2: 2.0, 3: 3.0]
let dicSix: [Double: String] = [1.0: "Один", 2.0: "Два", 3.0: "Три"]
let dicSeven: [String: [String: String]] = ["Один": ["Один": "Один"], "Два": ["Два": "Два"], "Три": ["Три": "Три"]]
let dicEight: [String: [Int: Double]] = ["Один": [1: 1.0], "Два": [2: 2.0], "Три": [3: 3.0]]
let dicNine: [Double: Double] = [1.0: 1.0, 2.0: 2.0, 3.0: 3.0]
let dicTen: Dictionary<Double, Float> = [1.0: 1.0, 2.0: 2.0, 3.0: 3.0]

// Создать 2 Dictionary, в одном должны быть все месяца на русском, в другом на английском. Чтобы к словарю можно было так обращаться dict1[1] // Январь

let dictMonthRu = [1: "Январь", 2: "Февраль", 3: "Март", 4: "Апрель", 5: "Май", 6: "Июнь", 7: "Июль", 8: "Август", 9: "Сентябрь", 10: "Октябрь", 11: "Ноябрь", 12: "Декабрь"]
let dictMonthEng = [1: "January", 2: "February", 3: "March", 4: "April", 5: "May", 6: "June", 7: "July", 8: "August", 9: "September", 10: "October", 11: "November", 12: "December"]

print(dictMonthRu[1]!)
print(dictMonthEng[1]!)

// Собрать все ключи и значения каждого Dictionary и распечатайте в консоль

for (key, value) in dicOne {
    print(key, value)
}

for (key, value) in dicTwo {
    print(key, value)
}

for (key, value) in dicThree {
    print(key, value)
}

for (key, value) in dicFour {
    print(key, value)
}

for (key, value) in dicFive {
    print(key, value)
}

for (key, value) in dicTwo {
    print(key, value)
}

for (key, value) in dicSix {
    print(key, value)
}

for (key, value) in dicSeven {
    print(key, value)
}

for (key, value) in dicEight {
    print(key, value)
}

for (key, value) in dicNine {
    print(key, value)
}

for (key, value) in dicTen {
    print(key, value)
}

for (key, value) in dictMonthRu {
    print(key, value)
}

for (key, value) in dictMonthEng {
    print(key, value)
}

// Создать пустой Dictionary и через условный оператор if проверьте пустой он или нет, если пустой то добавить в него пару любых значений

var dictEmpty: [String: String] = [:]

if dictEmpty.isEmpty {
    dictEmpty = ["Один": "Один", "Два": "Два"]
}

print(dictEmpty)
