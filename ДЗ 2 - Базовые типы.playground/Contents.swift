import UIKit

// Создать свои типы данных через typealias

typealias myString = String
typealias myInt = Int
typealias myDouble = Double
typealias myBool = Bool
typealias myFloat = Float

// Создать различные выражения с приведением типа

let myStringValue: myString = "Какой-то текст"
let myIntValue: myInt = 10
let myDoubleValue: myDouble = 10.0
let myBoolValue: myBool = true
let myFloatValue: myFloat = 10.0

// Площадь квадрата

var side: myDouble = 4

func squareArea (side: myDouble) -> myDouble {
    return side * side
    }

print ("Площадь квадрата со стороной \(side) равна \(squareArea(side: side))")

// Площадь треугольника

var footing: myDouble = 10
var height: myDouble = 5

func triangleArea (footing: myDouble, height: myDouble) -> myDouble {
    return 0.5 * footing * height
}

print ("Площадь треугольника с основанием \(footing), высотой \(height) равна \(triangleArea(footing: footing, height: height))")

