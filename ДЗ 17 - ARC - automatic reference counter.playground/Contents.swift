import UIKit

//1. Описать несколько структур – любой легковой автомобиль и любой грузовик
//2. Структуры должны содержать марку авто (можно через enum 5-6 марок автомобилей сделать), год выпуска, объем багажника / кузова, запущен ли двигатель
//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить, двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема
//4. Добавить в структуры метод с одним аргументом типа enum, который будет менять свойства структуры в зависимости от действия (То есть будут меняться состояния машины: едет (значит двигатель запущен), стоит на месте, и тд)
//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия
//6. Положить объекты структур в словарь, как ключи, а их названия как строки например var dict = [structCar: "structCar"]

enum CarBrand: String, Hashable {
    case toyota = "Toyota"
    case bmw = "BMW"
    case audi = "Audi"
    case ford = "Ford"
    case kia = "Kia"
    case volvo = "Volvo"
}

enum CarAction {
    case startEngine
    case stopEngine
    case openWindows
    case closeWindows
    case loadCargo(volume: Double)
    case unloadCargo(volume: Double)
}

struct PassengerCar: Hashable {
    let brand: CarBrand
    let year: Int
    let trunkVolume: Double
    var isEngineRunning: Bool = false
    var areWindowsOpen: Bool = false
    var currentCargoVolume: Double = 0
    
    mutating func perform(action: CarAction) {
        switch action {
        case .startEngine:
            isEngineRunning = true
            print("\(brand.rawValue): двигатель запущен — машина едет")
        case .stopEngine:
            isEngineRunning = false
            print("\(brand.rawValue): двигатель заглушен — машина стоит на месте")
        case .openWindows:
            areWindowsOpen = true
            print("\(brand.rawValue): окна открыты")
        case .closeWindows:
            areWindowsOpen = false
            print("\(brand.rawValue): окна закрыты")
        case .loadCargo(let volume):
            if currentCargoVolume + volume <= trunkVolume {
                currentCargoVolume += volume
                print("\(brand.rawValue): загружено \(volume) л. В багажнике: \(currentCargoVolume)/\(trunkVolume) л")
            } else {
                print("\(brand.rawValue): недостаточно места в багажнике")
            }
        case .unloadCargo(let volume):
            if volume <= currentCargoVolume {
                currentCargoVolume -= volume
                print("\(brand.rawValue): выгружено \(volume) л. Осталось: \(currentCargoVolume) л")
            } else {
                print("\(brand.rawValue): нельзя выгрузить больше, чем есть")
            }
        }
    }
}

struct Truck: Hashable {
    let brand: CarBrand
    let year: Int
    let bodyVolume: Double
    var isEngineRunning: Bool = false
    var areWindowsOpen: Bool = false
    var currentCargoVolume: Double = 0
    
    mutating func perform(action: CarAction) {
        switch action {
        case .startEngine:
            isEngineRunning = true
            print("\(brand.rawValue) (грузовик): двигатель запущен — едет")
        case .stopEngine:
            isEngineRunning = false
            print("\(brand.rawValue) (грузовик): двигатель заглушен — стоит")
        case .openWindows:
            areWindowsOpen = true
            print("\(brand.rawValue) (грузовик): окна открыты")
        case .closeWindows:
            areWindowsOpen = false
            print("\(brand.rawValue) (грузовик): окна закрыты")
        case .loadCargo(let volume):
            if currentCargoVolume + volume <= bodyVolume {
                currentCargoVolume += volume
                print("\(brand.rawValue): в кузов загружено \(volume) л. Итого: \(currentCargoVolume)/\(bodyVolume) л")
            } else {
                print("\(brand.rawValue): кузов переполнен")
            }
        case .unloadCargo(let volume):
            if volume <= currentCargoVolume {
                currentCargoVolume -= volume
                print("\(brand.rawValue): из кузова выгружено \(volume) л. Осталось: \(currentCargoVolume) л")
            } else {
                print("\(brand.rawValue): в кузове нет столько груза")
            }
        }
    }
}

var car1 = PassengerCar(brand: .toyota, year: 2020, trunkVolume: 500)
var car2 = PassengerCar(brand: .bmw, year: 2022, trunkVolume: 400)
var truck1 = Truck(brand: .volvo, year: 2018, bodyVolume: 10000)

print("=== Тестирование легковых авто ===")
car1.perform(action: .startEngine)
car1.perform(action: .openWindows)
car1.perform(action: .loadCargo(volume: 200))
car1.perform(action: .loadCargo(volume: 400))
car1.perform(action: .unloadCargo(volume: 100))
car1.perform(action: .stopEngine)

print("\n=== Тестирование BMW ===")
car2.perform(action: .loadCargo(volume: 350))
car2.perform(action: .startEngine)

print("\n=== Тестирование грузовика ===")
truck1.perform(action: .startEngine)
truck1.perform(action: .loadCargo(volume: 7000))
truck1.perform(action: .loadCargo(volume: 5000))
truck1.perform(action: .unloadCargo(volume: 3000))
truck1.perform(action: .closeWindows)

var dict: [PassengerCar: String] = [:]
dict[car1] = "Моя Toyota"
dict[car2] = "BMW друга"

print("\n=== Словарь легковых авто ===")
for (car, name) in dict {
    print("\(name): \(car.brand.rawValue), \(car.year) г., багажник \(car.trunkVolume) л, груз: \(car.currentCargoVolume) л")
}

var truckDict: [Truck: String] = [:]
truckDict[truck1] = "Рабочий Volvo"

print("\n=== Словарь грузовиков ===")
for (truck, name) in truckDict {
    print("\(name): \(truck.brand.rawValue), \(truck.year) г., кузов \(truck.bodyVolume) л, груз: \(truck.currentCargoVolume) л")
}
