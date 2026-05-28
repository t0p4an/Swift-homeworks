import UIKit

// Создать свои строки

let simpleString = "Простая строка"

let name  = "Сергей"
let age = 25
let greeting = "Привет, меня зовут \(name), Мне \(age) лет"

let emptyString = ""

// Поработать с циклом for in

let names = ["Андрей", "Анна", "Марк", "Дима"]
for name in names {
    print("Привет, \(name)")
}

for index in 1...5 {
    print("\(index) умножить на 5 равно \(index * 5)")
}
