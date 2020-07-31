protocol Car {
    func drive()
}

class HugeCar: Car {
    
    func drive() {
        print("You drive huge car")
    }
    
}

class FastCar: Car {
    
    func drive() {
        print("You drive fast car")
    }
    
}

enum CarType {
    case huge, fast
}

let hugeCar = HugeCar()
hugeCar.drive()

let fastCar = FastCar()
fastCar.drive()

class CarFactory {
    
    static func poduceCar(type: CarType) -> Car {
        var car: Car
        
        switch type {
        case .fast:
            car = FastCar()
        case .huge:
            car = HugeCar()
        }
        
        return car
    }
    
}

let fastCar1 = CarFactory.poduceCar(type: .fast)
let hugeCar1 = CarFactory.poduceCar(type: .huge)
fastCar1.drive()
hugeCar1.drive()
