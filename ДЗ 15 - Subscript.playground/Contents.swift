import UIKit

// Создать класс, в котором будет 3 свойства мама, папа, дети. Создать subscript и упорядочить их по индексу

class Family {
    var mother = "Мама"
    var father = "Папа"
    var children = "Дети"
    
    subscript(index: Int) -> String{
        switch index {
        case 0:
            return mother
        case 1:
            return father
        case 2:
            return children
        default:
            return ""
        }
    }
}

var fam = Family()
fam[2]

// Создать Индекс который будет принимать число умножать его на 100 и делить на 2

class Calculation {
    var number = 0
    
    subscript (index: Int) -> Int {
        return (index * 100) / 2
    }
}

var calc = Calculation()
calc[10]

// Создать свой subscript у которого внутри есть оператор if else

class MySubscript {
    var mother = "Мама"
    var father = "Папа"
    var children = "Дети"
    
    subscript(index: Int) -> String {
        if index == 0 {
            return mother
        } else if index == 1 {
            return father
        } else if index == 2 {
            return children
        } else {
            return "Неизвестный индекс"
        }
    }
}

var mySub = MySubscript()
mySub[2]

// Создать класс человек и в нем 3 свойства: имя, возраст, пол

class Human {
    var name = "Андрей"
    var age = 18
    var sex = "М"
    func chill() {
        print("Отдыхаю")
    }
}

// Создать ещё 2 класса которые наследуются от класса человек и переопределить методы и свойства

class Student: Human {
    override init() {
        super.init()
        self.name = "Игорь"
        self.age = 22
        self.sex = "Мужской"
    }
}

class Activity: Human {
    override func chill() {
        print("Работаю")
    }
}

// Создать словарь, который хранит все типы данных, которые есть, а ключ должен быть только строка (воспользоваться enum для типов данных)

var mixedDictionary: [String: Any] = [
    "string": "Hello",
    "integer": 42,
    "double": 3.14,
    "boolean": true,
    "array": [1, 2, 3],
    "dictionary": ["key": "value"]
]

enum DictionaryValue {
    case string(String)
    case int(Int)
    case double(Double)
    case bool(Bool)
    case array([Any])
    case dictionary([String: Any])
}




