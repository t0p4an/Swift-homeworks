import UIKit

// Создать 5 констант строчного типа, которые содержат цифры и посчитайте их сумму, используя новые инструменты

let firstNumber = "1"
let secondNumber = "2"
let thirdNumber = "3"
let fourthNumber = "4"
let fifthNumber = "5"

print(Int(firstNumber)! + Int(secondNumber)! + Int(thirdNumber)! + Int(fourthNumber)! + Int(fifthNumber)!)

// Создать 5 констант со значением nil

let first: String? = nil
let second: Int? = nil
let third: Bool? = nil
let fourth: Double? = nil
let fifth: Float? = nil

// Создать 5 опциональных типов констант, а затем установить им значения

var one: String?
one = "One"

var two: Int?
two = 2

var three: Bool?
three = true

var four: Double?
four = 4.0

var five: Float?
five = 5.0

// Создать переменную строчную, в которую записать свое имя, а затем распечатать ее по буквам

var name = "Сергей"

for letter in name {
    print(letter)
}

// Создать массив с целочисленными цифрами в хаотичном порядке. Распечатать в упорядоченном порядке эти цифры

let numbers = [4, 2, 5, 1, 3]

print(numbers.sorted())


