import UIKit

// Создать 3 функции: 1 - которая ничего не принимает и ничего не возвращает. 2 - Принимает, но не возвращает. 3 - И принимает и возвращает = и все три вызвать потом. Что делают функции, выбери сам(а)

// Ничего не принимает и ничего не возвращает
func emptyFunc() {
    print("Привет")
}

// Принимает, но не возвращает
func funcWithEnter(name: String) {
    print("Привет \(name)")
}

// И принимает, и возвращает
func funcWithReturn(name: String) -> String {
    let message = "Привет \(name)"
    print(message)
    return message
}

emptyFunc()
funcWithEnter(name: "Кеша")
funcWithReturn(name: "Кеша")

// Создать журнал для учителя, который будет принимать имя студента, профессию и оценку, затем будет записывать это все в массив. И внесите 10 студентов туда и распечатаете через цикл for

struct Student {
    var name: String
    var profession: String
    var score: Int
}

var journal: [Student] = []

@MainActor
func addStudent(name: String, profession: String, score: Int) {
    let student = Student(name: name, profession: profession, score: score)
    journal.append(student)
}

addStudent(name: "Иван Петров", profession: "Программист", score: 5)
addStudent(name: "Мария Смирнова", profession: "Дизайнер", score: 4)
addStudent(name: "Алексей Иванов", profession: "Тестировщик", score: 3)
addStudent(name: "Елена Козлова", profession: "Аналитик", score: 5)
addStudent(name: "Дмитрий Соколов", profession: "Разработчик", score: 4)
addStudent(name: "Ольга Новикова", profession: "Менеджер", score: 3)
addStudent(name: "Сергей Морозов", profession: "Инженер", score: 5)
addStudent(name: "Наталья Волкова", profession: "Дизайнер", score: 4)
addStudent(name: "Андрей Павлов", profession: "Программист", score: 2)
addStudent(name: "Татьяна Семенова", profession: "Тестировщик", score: 4)

for student in journal {
    print("Имя: \(student.name), Профессия: \(student.profession), Оценка: \(student.score)")
}

// Создать функцию которая принимает имя и фамилию, и возвращает имя + фамилию в одной строке, потом пройтись по массиву с именем и фамилией и распечатать скрепленные имен и фамилия вместе в консоль

func fullName(firstName: String, lastName: String) -> String {
    return "\(firstName) \(lastName)"
}

let people = [
    (firstName: "Алексей", lastName: "Иванов"),
    (firstName: "Мария", lastName: "Петрова"),
    (firstName: "Дмитрий", lastName: "Сидоров"),
    (firstName: "Екатерина", lastName: "Смирнова"),
    (firstName: "Сергей", lastName: "Кузнецов"),
    (firstName: "Анна", lastName: "Попова"),
    (firstName: "Иван", lastName: "Соколов"),
    (firstName: "Ольга", lastName: "Лебедева")
]

for person in people {
    let result = fullName(firstName: person.firstName, lastName: person.lastName)
    print(result)
}

// Создайте функцию которая принимает параметры и вычисляет площадь круга

func circleArea(radius: Double) -> Double {
    let pi = 3.141592653589793
    return pi * radius * radius
}

let radius = 5.0
let area = circleArea(radius: radius)
print("Площадь круга с радиусом \(radius) равна \(area)")

// Создайте Dictionary, с именем ученика(цы), где ключ name и score, а значение дата, когда человек получил такую оценку

let studentScores: [String: [String: Any]] = [
    "Алексей Иванов": [
        "score": 95,
        "date": "2026-01-15"
    ],
    "Мария Петрова": [
        "score": 88,
        "date": "2026-01-16"
    ],
    "Дмитрий Сидоров": [
        "score": 92,
        "date": "2026-01-14"
    ],
    "Екатерина Смирнова": [
        "score": 78,
        "date": "2026-01-17"
    ],
    "Сергей Кузнецов": [
        "score": 100,
        "date": "2026-01-15"
    ]
]
