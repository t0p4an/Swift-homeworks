import UIKit

// Создать цикл в цикле. В первом цикле интервал до 200. Во втором цикле делаем так, как доходим до 15 элемента в первом цикле, выходим из двух циклов

for i in 0...200 {
    if i == 15 {
        break
    }
    print (i)
}

// Создать в if и отдельно в switch программу которая будет смотреть на возраст человека и говорить куда ему идти в школу, в садик, в универ, на работу, на пенсию и тд

let age = 20

if age < 7 {
    print("Тебе пора в детский сад")
} else if age < 18 {
    print("Тебе пора в школу")
} else if age < 23 {
    print("Тебе пора в университет")
} else if age < 60 {
    print("Тебе пора на работу")
} else if age > 59 {
    print("Тебе пора на пенсию")
}

switch age {
case 1...6:
    print("Тебе пора в детский сад")
case 7...17:
    print("Тебе пора в школу")
case 18...22:
    print("Тебе пора в университет")
case 23...59:
    print("Тебе пора на работу")
case 60...:
    print("Тебе пора на пенсию")
default:
    break
}

// Создать все циклы for in которые знаете

// Диапозоны
for i in 1...10 {
    print(i)
}

// Массивы
let fruits = ["Яблоко", "Банан", "Манго"]
for fruit in fruits {
    print(fruit)
}

// Словари
let scores = ["Анна": 95, "Борис": 87, "Вика": 92]
for (name, score) in scores {
    print("\(name): \(score)")
}

// ZIP
let names = ["Анна", "Борис", "Вика"]
let ages = [25, 30, 28]

for (name, age) in zip(names, ages) {
    print("\(name) - \(age) лет")
}

// Reverse
for i in (1...5).reversed() {
    print(i)
}

// В switch и отдельно в if создать систему оценивания школьников по 12 бальной системе и и высказывать через print мнение

let score = 10

if score >= 11 {
    print("Отлично")
} else if score == 10 {
    print("Практически отлично")
} else if score >= 8 {
    print("Хорошо")
} else if score == 7 {
    print("Хорошо с недостатками")
} else if score >= 5 {
    print("Удовлетворительно")
} else if score == 4 {
    print("Слабо удовлетворительно")
} else if score == 3 {
    print("Плохо")
} else if score == 2 {
    print("Очень плохо")
} else if score == 1 {
    print("Неудовлетворительно")
}

switch score {
case 11...12:
    print("Отлично")
case 10:
    print("Практически отлично")
case 8...9:
    print("Хорошо")
case 7:
    print("Хорошо с недостатками")
case 5...6:
    print("Удовлетворительно")
case 4:
    print("Слабо удовлетворительно")
case 3:
    print("Плохо")
case 2:
    print("Очень плохо")
case 1:
    print("Неудовлетворительно")
default:
    break
}

// Создать массив(без тюплов / кортежей) с именами всех членов вашей семьи включая родственников, чтобы количество имен было не менее 10 и отсортируйте, распечатайте по алфавиту их в консоль

let namesFamily = ["Сергей", "Анна", "Томара", "Анатолий", "Константин", "Антон", "Дмитрий", "Степан", "Артём", "Денис"]

print(namesFamily.sorted())

for name in namesFamily.sorted() {
    print(name)
}

print(namesFamily.sorted().joined(separator: ", "))
