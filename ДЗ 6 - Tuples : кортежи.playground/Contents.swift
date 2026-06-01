import UIKit

// Создать 5 разных Tuples с различными типами данных. Один из них должен содержать все месяца года на русском. Второй на английском

let tupleOne = ("Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь")
let tupleTwo = ("January", "February", "March", "April", "May", "Juny", "July", "August", "September", "October", "November", "December")
var tupleThree: (Int, Double, String)
let tupleFour: (String, Int, Bool) = ("Hello", 10, true)
let tupleFive = (1, "One", 2, "Two", 3, "Three")

// Распечатать Tuples 3мя различными способами

print(tupleOne)
print(tupleTwo.0)
print(tupleFour, tupleFive)

// Создать пустой Tuples

var emptyTuple: ()
