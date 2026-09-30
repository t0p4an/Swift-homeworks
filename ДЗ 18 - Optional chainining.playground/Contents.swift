import UIKit

//1. Сделать класс Люди, у класса будут свойства (проперти) родственники, соседи и тд (всё опционально)
//2. Создать нужно более 25 человек

class People {
    var parents: [String]? = ["Анна", "Алексей"]
    var neighbors: [String]? = ["Олег", "Анатолий", "Иван"]
    var friends: [String]? = ["Максим", "Антон", "Мария"]
}

//3. Посчитать, сколько у этого человека двоюродных Братьев, троюродных Сестёр, Теть, Дядь

var people = People()

people.friends?.count
people.parents?.count
people.neighbors?.count

//4. Создать класс животных и свойства (проперти) - корова, коза, собака и тд

class Animals {
    var animals: [String]? = ["Корова", "Коза", "Собака"]
}

//5. Создать класс растения и проперти - трава, цветы и тд

class Plants {
    var plants: [String]? = ["Трава", "Цветы", "Чаша"]
}

//5. Положить их всех в массив и отсортировать по алфавиту и по классу - люди - животные - растения

var animals = Animals()
var plants = Plants()

var all: [String] = []

let sortedPeople = (people.parents ?? []) +
                   (people.neighbors ?? []) +
                   (people.friends ?? [])

let sortedAnimals = animals.animals ?? []
let sortedPlants = plants.plants ?? []

all = sortedPeople.sorted() +
      sortedAnimals.sorted() +
      sortedPlants.sorted()

print(all)







