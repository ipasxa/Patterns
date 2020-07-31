protocol Car {
    func drive()
}

class LittleSizeCar: Car {
    func drive() {
        print("You drive little car")
    }
}

class middleSizeCar: Car {
    func drive() {
        print("You drive middle car")
    }
}

protocol Bus {
    func drive()
}

class LittleSizeBus: Bus {
    func drive() {
        print("You drive little bus")
    }
}

class MiddleSizeBus: Bus {
    func drive() {
        print("You drive middle bus")
    }
}

protocol Factory {
    func produceBus() -> Bus
    func produceCar() -> Car
}

class LittleSizeVehicleFactory: Factory {
    func produceBus() -> Bus {
        print("You build little size bus")
        return LittleSizeBus()
    }
    
    func produceCar() -> Car {
        print("You build little size car")
        return LittleSizeCar()
    }
}

class MiddleSizeVehicleFactory: Factory {
    func produceBus() -> Bus {
        print("You build middle size bus")
        return MiddleSizeBus()
    }
    
    func produceCar() -> Car {
        print("You build middle size car")
        return middleSizeCar()
    }
}

let littleFactory = LittleSizeVehicleFactory()
let littleCar = littleFactory.produceCar()
let littleBus = littleFactory.produceBus()
littleCar.drive()
littleBus.drive()

let middleFactory = MiddleSizeVehicleFactory()
let middleCar = middleFactory.produceCar()
let middleBus = middleFactory.produceBus()
middleCar.drive()
middleBus.drive()
