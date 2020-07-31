protocol Vehicle {
    func drive()
}

class Car: Vehicle {
    
    func drive() {
        print("You drive a car")
    }
    
}

class Truck: Vehicle {
    
    func drive() {
        print("You drive a truck")
    }
    
}

class Bus: Vehicle {
    
    func drive() {
        print("You drive a bus")
    }
    
}

protocol VehicleFactory {
    func produce() -> Vehicle
}

class CarFactory: VehicleFactory {
    
    func produce() -> Vehicle {
        print("You build a car")
        return Car()
    }
    
}

class TruckFactory: VehicleFactory {
    
    func produce() -> Vehicle {
        print("You build a truck")
        return Truck()
    }
    
}

class BusFactory: VehicleFactory {
    
    func produce() -> Vehicle {
        print("You build a bus")
        return Bus()
    }
    
}

let carFactory = CarFactory()
let car = carFactory.produce()

let truckFactory = TruckFactory()
let truck = truckFactory.produce()

let busFactory = BusFactory()
let bus = busFactory.produce()







