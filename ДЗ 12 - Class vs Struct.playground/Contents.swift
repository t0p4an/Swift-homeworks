import UIKit

// Создать класс родитель и 2 класса наследника. Например, родитель - животное, а 2 наследника: жираф и крокодил. Распечатать их общее родительское свойство, а затем уникальные свойства

class Animal {
    var age = "Возраст"
    var weight = "Вес"
    var height = "Рост"
}

class Girrafe: Animal {
    var neck = "Шея"
}

class Crocodile: Animal {
    var head = "Голова"
}

// Общие родительские свойства
let animal = Animal()
print("\(animal.age), \(animal.weight), \(animal.height)")

// Уникальные свойства
let girrafe = Girrafe()
let crocodile = Crocodile()
print("\(girrafe.neck), \(crocodile.head)")

// Написать программу, в которой создать класс Car *name*, *countWheels* и несколько методов - *ride*(выводит произведение свойств), *stop*, *explode*

class Car {
    var name: String
    var countWheels: Int
    
    init(name: String, countWheels: Int) {
        self.name = name
        self.countWheels = countWheels
    }
    
    func ride() {
        print("Автомобиль \(name) едет на \(countWheels) колёсах")
    }
    
    func stop() {
        print("Автомобиль \(name) остановился")
    }
    
    func explode(){
        print("Автомобиль \(name) взорвался")
    }
}

let car = Car(name: "Tesla", countWheels: 4)
car.stop()

// Создайте Класс с учениками, в котором будет метод, который принимает структуру/класс учеников и сортирует их по оценкам и возвращает отсортированных учеников

struct Student {
    let name: String
    let score: Int
}

class StudentSorted {
    func studentSorted(_ students: [Student]) -> [Student] {
        return students.sorted { $0.score > $1.score }
    }
}

let students = [
    Student(name: "Алексей", score: 4),
    Student(name: "Сергей", score: 3),
    Student(name: "Артём", score: 2)
]

let studentSorted = StudentSorted()
let sorted = studentSorted.studentSorted(students)

// Написать структуру или класс, и показать на примерах, чем отличается структура от класса

// СТРУКТУРА
struct UserStruct {
    var name: String
    var age: Int
}

// КЛАСС
class UserClass {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// ДЕМОНСТРАЦИЯ ОТЛИЧИЙ

// 1. КОПИРОВАНИЕ
var structUser1 = UserStruct(name: "Анна", age: 25)
var structUser2 = structUser1  // СОЗДАЕТСЯ НОВАЯ КОПИЯ
structUser2.name = "Мария"
print(structUser1.name)  // "Анна" (не изменилось)
print(structUser2.name)  // "Мария"

var classUser1 = UserClass(name: "Анна", age: 25)
var classUser2 = classUser1  // КОПИРУЕТСЯ ССЫЛКА
classUser2.name = "Мария"
print(classUser1.name)  // "Мария" (изменилось!)
print(classUser2.name)  // "Мария"

// 2. НАСЛЕДОВАНИЕ
// Структура не может наследовать
// struct AdminStruct: UserStruct { }  // ОШИБКА!

// Класс может наследовать
class AdminClass: UserClass { }  // ✅

// 3. ДЕИНИЦИАЛИЗАТОР (только у класса)
class Logger {
    deinit {
        print("Объект удален из памяти")
    }
}
