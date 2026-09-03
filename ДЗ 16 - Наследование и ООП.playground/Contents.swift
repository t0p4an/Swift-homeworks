import UIKit

//Задание 1

    //1. Найти информацию в интернете, что такое Наследование, перефразировать эту информацию своими словами и вставить это в xcode в закоментрированном виде

        //Наследование — это когда новый класс получает в наследство всё, что есть у старого, и может добавить свое, чтобы не дублировать код.

    //2. Сделать то же самое с понятием Инкапсуляция

        //Инкапсуляция - это когда мы делаем свойства класса приватными, чтобы их нельзя было наследовать

    //3. И так же с понятием Полиморфизм

        //Полиморфизм — это когда разные объекты умеют делать одно и то же действие, но каждый по-своему

//Задание 2

    //1. Создать класс "Люди", в этом классе 4 property - "имя", "рост", "вес", "пол", а также будет иметь метод "say", который будет что-то, свойственное человеку, говорить

class People {
    var name = ""
    var height = 0
    var weight = 0
    var sex = ""
    
    func say() {
        print("Говорит привет")
    }
}

    //2. Создать sub class (наследники) "повар", "менеджер", "борец" и переопределить метод "say(говорит)". Чтобы по разному говорило: "Менеджер говорит"

class Cook: People {
    override func say() {
        print("Повар говорит привет")
    }
}

class Manager: People {
    override func say() {
        print("Менеджер говорит привет")
    }
}

class Wrestler: People {
    override func say() {
        print("Борец говорит привет")
    }
}

    //3. Создать по одному объекту(экземпляру) каждого класса и объединить их в массив

let people = People()
people.name = "Андрей"
people.height = 180
people.weight = 75
people.sex = "М"

let cook = Cook()
cook.name = "Мария"
cook.height = 165
cook.weight = 55
cook.sex = "Ж"

let manager = Manager()
manager.name = "Василиса"
manager.height = 150
manager.weight = 45
manager.sex = "Ж"

let wrestler = Wrestler()
wrestler.name = "Роман"
wrestler.height = 200
wrestler.weight = 100
wrestler.sex = "М"

var allPeople = [people, cook, manager, wrestler]

    //4. В цикле “for in” пройти по всем элементам массива и вывести в консоль все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "say(говорит)"

for person in allPeople {
    print("Имя: \(person.name)")
    print("Рост: \(person.height) см")
    print("Вес: \(person.weight) кг")
    print("Пол: \(person.sex)")
    person.say()
    print("------")
}

//Задание 3

    //1. Создать еще одного наследника от super Class, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам People

    //2. Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.

class Student: People {
    var course = 0
    var university = ""
    
    override func say() {
        super.say()
        print("Студент говорит привет")
    }
}

let student = Student()
student.name = "Степан"
student.height = 170
student.weight = 60
student.sex = "М"
student.course = 3
student.university = "МГУ"

allPeople.append(student)

for person in allPeople {
    print("Имя: \(person.name)")
    print("Рост: \(person.height) см")
    print("Вес: \(person.weight) кг")
    print("Пол: \(person.sex)")
    
    if let student = person as? Student {
        print("Университет: \(student.university)")
        print("Курс: \(student.course)")
    }
    
    person.say()
    print("-------")
}

    //3. Вывести все это в обратном порядке

for person in allPeople.reversed() {
    print("Имя: \(person.name)")
    print("Рост: \(person.height) см")
    print("Вес: \(person.weight) кг")
    print("Пол: \(person.sex)")
    
    if let student = person as? Student {
        print("Университет: \(student.university)")
        print("Курс: \(student.course)")
    }
    
    person.say()
    print("-------")
}

//Задание 4

    // 1. Создать класс "Марсианин" (не наследник класса people!) со своими собственными property (отличными от people) и методом "say" (отличным от people)

class Martian {
    var planet = "Марс"
    var skinColor = "Желтый"
    
    func say() {
        print("Пу-пу-пи-пи-пу-пу")
    }
}

    //2. Унаследоваться от него и создать пару других классов (Инопланетян) с переопределенным методом "say"

class Moonian: Martian {
    override func say() {
        print("Ку-ку-ки-ки-ку-ку")
    }
}

class Neptunian: Martian {
    override func say() {
        print("Лу-лу-ли-ли-лу-лу")
    }
}

    //3. Объединить всех People и Марсианинов в один массив

let martian = Martian()

let moonian = Moonian()
moonian.planet = "Луна"
moonian.skinColor = "Синий"

let neptunian = Neptunian()
neptunian.planet = "Нептун"
neptunian.skinColor = "Фиолетовый"

var allPlanetDwellers: [Any] = [people, cook, manager, wrestler, martian, moonian, neptunian]

    //4. В цикле выводить тип объекта (People или Марсианин), перед тем как выводить его свойства и вызывать метод

for dweller in allPlanetDwellers {
    if let person = dweller as? People {
        print("Тип: Человек")
        print("Имя: \(person.name)")
        print("Рост: \(person.height) см")
        print("Вес: \(person.weight) кг")
        print("Пол: \(person.sex)")
        person.say()
        print("-------")
        
        if let student = person as? Student {
            print("Университет: \(student.university)")
            print("Курс: \(student.course)")
        }
    } else if let person = dweller as? Martian {
        print("Тип: Инопланетянин")
        print("Планета: \(person.planet)")
        print("Цвет кожи: \(person.skinColor)")
        person.say()
        print("-------")
    }
}

//Задание 5

    //1. Поместить всех people в один массив, а Марсиан в другой массив (количество People и Марсиан должно быть разное)

let allAlien = [martian, moonian, neptunian]

    //2. В одном цикле “for in” выводить People, а потом Марсианина, доставая данные поочередно из двух разных массивов, если в одном из массивов объектов больше, то в конце должны выводиться только объекты этого массива (так как других уже нет)

let maxCount = max(allPeople.count, allAlien.count)

for index in 0..<maxCount {
    let pairNumber = index + 1
    print("=== ПАРА №\(pairNumber) ===")
    
    if index < allPeople.count {
        let person = allPeople[index]
        print("\n👤 ЧЕЛОВЕК:")
        print("  Имя: \(person.name)")
        print("  Рост: \(person.height) см")
        print("  Вес: \(person.weight) кг")
        print("  Пол: \(person.sex)")
        
        if let student = person as? Student {
            print("  Университет: \(student.university)")
            print("  Курс: \(student.course)")
        }
        
        print("  Говорит: ", terminator: "")
        person.say()
    } else {
        print("\n👤 ЧЕЛОВЕК: (нет)")
    }
    
    if index < allAlien.count {
        let alien = allAlien[index]
        print("\n👽 МАРСИАНИН:")
        print("  Планета: \(alien.planet)")
        print("  Цвет кожи: \(alien.skinColor)")
        print("  Говорит: ", terminator: "")
        alien.say()
    } else {
        print("\n👽 МАРСИАНИН: (нет)")
    }
    
    print("\n" + String(repeating: "-", count: 30))
}




