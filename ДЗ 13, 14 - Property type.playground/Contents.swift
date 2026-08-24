import UIKit

// Создать класс "Students", добавить ему property: dateOfBirth, skills. Создать свои структуры с разными видами свойств: сохраняемые/не сохраняемые, вычисляемые, свойства типа и т.д.

class Students {
    var dateOfBirth = "XX.XX.XXXX"
    var skills = ""
}

// Структура с сохраняемыми свойствами

struct Student {
    var name: String
    var age: Int
}

// Структура с вычисляемыми свойствами

struct Circle {
    var radius: Double
    var diameter: Double {
        return radius * 2
    }
}

// Структура со свойством типа

@MainActor
struct Person {
    static var age = 8
}

// Написать структуру "CreateTriangle", с двумя свойствами - угол A, угол C. В которые мы можем записать какие-то значения, и сделать вычисляемое свойство угол B, которые будет вычисляться по правилу суммы углов треугольника (180 градусов). То есть, мы записываем в угол A - 50 градусов, C - 120 градусов, а в B будет автоматически вычисляться свойство и возвращать нам 10 градусов

struct CreateTriangle {
    var angleA: Double
    var angleC: Double
    
    var angleB: Double {
        return 180 - angleA - angleC
    }
}

var triangle = CreateTriangle(angleA: 50, angleC: 120)
print(triangle.angleB)

// Создать структуру "Резюме", у которой есть такие свойства:
// - Фамилия,
// - Имя,
// - Должность (может быть enum, с определенным набором должностей)
// - Опыт,
// - Контактные данные (телефон, емейл) (Может быть другой структурой)

struct Resume {
    var firstName: String
    var lastName: String
    
    enum Position: String {
        case developer = "Разработчик"
        case designer = "Дизайнер"
        case manager = "Менеджер"
        case tester = "Тестировщик"
        case analyst = "Аналитик"
        case teamLead = "Тимлид"
        case productOwner = "Владелец продукта"
        case other = "Другая должность"
    }
    
    var experience: Int
    var contactInfo: String
}

//Написать класс, в котором есть 4 метода:
//- Пустой, которая просто выводит сообщение через print;
//- Который принимаете параметры и выводит их в консоль;
//- Который принимает и возвращает параметры;
//- Который принимает замыкание и распечатывает результаты в консоль.

class MyClass {
    func emptyMethod() {
        print("Привет")
    }
    
    func printParams(name: String, age: String) {
        print("Меня зовут \(name), мне \(age) лет")
    }
    
    func funcWithReturn(name: String) -> String {
        let message = "Привет \(name)"
        print(message)
        return message
    }
    
    func clusere(closure: (Int, Int) -> Int) {
        var a = 10
        var b = 5
        let result = closure(a, b)
        print(result)
    }
}





