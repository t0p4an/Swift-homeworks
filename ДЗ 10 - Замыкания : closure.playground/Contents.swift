import UIKit

// Написать сортировку массива с помощью замыкания, сначала по возрастанию, затем по убыванию. Вывести всё в консоль.

let numbers = [0, 2, 24, 4, 6, 8, 12, 19, 22]
print(numbers.sorted { numberOne, numberTwo in
    numberOne < numberTwo
})

print(numbers.sorted { numberOne, numberTwo in
    numberOne > numberTwo
})

print(numbers.sorted(by: <))
print(numbers.sorted(by: >))

// Создать метод который запрашивает имена друзей, после этого имена ложит в массив, сортирует этот массив по количеству букв в имени и возвращает результат - отсортированный массив

func getFriendsName(names: [String]) -> [String] {
    return names.sorted { $0.count < $1.count }
}

let friends = ["Алексей", "Анна", "Степан", "Андрей", "Сергей", "Артём"]
let result = getFriendsName(names: (friends))
print(result)

// Написать функцию, которая будет принимать ключи, выводить ключи и значения словаря (Dictionary). Тип ключа и значения выбирайте сами

func getDictionary (key: String) {
    let dictionary = [
        "One": 1,
        "Two": 2,
        "Three": 3,
        "Four": 4,
        "Five": 5
    ]
    
    if let value = (dictionary[key]) {
        print("Ключ \(key), Значение - \(value)")
    }
}

getDictionary(key: "One")

// Написать функцию, которая принимает пустые массивы(один - строковый, второй - числовой) и проверяет их: если пустой - то добавить значения (любые) и вывести в консоль

func emptyDictionary(string: [String], number: [Int]) {
    var newString: [String] = []
    var newNumber: [Int] = []
    
    if string.isEmpty {
        newString.append("Hello")
        print(newString)
    }
    
    if number.isEmpty {
        newNumber.append(10)
        print(newNumber)
    }
}

emptyDictionary(string: [], number: [])
