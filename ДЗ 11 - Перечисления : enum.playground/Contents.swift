import UIKit

// Создайте по 1-2 enum разных типов. Можно брать примеры из жизни. Тип дня .day, .night

enum DayCycle {
    case day
    case night
}

// Создать несколько своих enum, названия какие хотите: например, анкета сотрудника - пол, возраст, ФИО, стаж

enum EmployeeProfile {
    case sex
    case age
    case fio
    case experience
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

// Создать enum со всеми цветами радуги

enum RainbowColors {
    case red, orange, yellow, green, blue, indigo, violet
}

// Создать enum оценок, а затем функцию, которая будет принимать этот enum и печатать в консоль какую оценку получил ученик

enum Score: Int {
    case two = 2
    case three = 3
    case four = 4
    case five = 5
}

func printScore(_ score: Score) {
    switch score {
    case .five:
        print("Отлично, 5")
    case .four:
        print("Хорошо, 4")
    case .three:
        print("Удовлетворительно, 3")
    case .two:
        print("Плохо, 2")
    
    }
    
}

let studentScore = Score.five
printScore(.five)

// Создать программу, которая "рассказывает" - бренды автомобилей стоят в гараже

enum CarBrand: String {
    case toyota = "Toyota"
    case honda = "Honda"
    case bmw = "BMW"
    case mercedes = "Mercedes"
    case audi = "Audi"
    case ford = "Ford"
    case tesla = "Tesla"
    case porsche = "Porsche"
    case ferrari = "Ferrari"
    case lamborghini = "Lamborghini"
}

var garage:[CarBrand] = []
@MainActor
func showGarage() {
    if garage.isEmpty {
        print("В гараже пусто")
        return
    }
    print("В гараже стоят:")
    for (index, car) in garage.enumerated() {
        print("\(index + 1). \(car.rawValue)")
    }
    print("Всего: \(garage.count)")
}

garage.append(.bmw)
garage.append(.toyota)
showGarage()
