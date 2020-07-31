// Class implementation

//class DriveVehicle {
//
//    final func startVehicle() {
//        haveASeat()
//        useProtection()
//        lookAtTheMirror()
//        turnSignal()
//        driveForward()
//    }
//
//    func haveASeat() {
//        preconditionFailure("This method should be overriden")
//    }
//
//    func useProtection() {
//        preconditionFailure("This method should be overriden")
//    }
//
//    func lookAtTheMirror() {
//        preconditionFailure("This method should be overriden")
//    }
//
//    func turnSignal() {
//        preconditionFailure("This method should be overriden")
//    }
//
//    func driveForward() {
//        preconditionFailure("This method should be overriden")
//    }
//
//}
//
//class Bicycle: DriveVehicle {
//
//    override func haveASeat() {
//        print("Seat on a bicycle")
//    }
//
//    override func useProtection() {
//        print("Put on a helmet")
//    }
//
//    override func lookAtTheMirror() {
//        print("Look at little mirror")
//    }
//
//    override func turnSignal() {
//        print("Show left hand")
//    }
//
//    override func driveForward() {
//        print("pedal")
//    }
//
//}
//
//class Car: DriveVehicle {
//
//    override func haveASeat() {
//        print("Seat in a car")
//    }
//
//    override func useProtection() {
//        print("fasten seat belt")
//    }
//
//    override func lookAtTheMirror() {
//        print("Look at the review mirror")
//    }
//
//    override func turnSignal() {
//        print("turn on left turn light")
//    }
//
//    override func driveForward() {
//        print("push pedal")
//    }
//
//}

// Protocol impl

protocol DriveVehicle {
    func haveASeat()
    func useProtection()
    func lookAtTheMirror()
    func turnSignal()
    func driveForward()
    func startVehicle()
}

extension DriveVehicle {
    
    func startVehicle() {
        haveASeat()
        useProtection()
        lookAtTheMirror()
        turnSignal()
        driveForward()
    }
    
    func haveASeat() {
        preconditionFailure("This method should be overriden")
    }
    
    func useProtection() {
        preconditionFailure("This method should be overriden")
    }
    
    func lookAtTheMirror() {
        preconditionFailure("This method should be overriden")
    }
    
    func turnSignal() {
        preconditionFailure("This method should be overriden")
    }
    
    func driveForward() {
        preconditionFailure("This method should be overriden")
    }
    
}

class Bicycle: DriveVehicle {
    
    func haveASeat() {
        print("Seat on a bicycle")
    }
    
    func useProtection() {
        print("Put on a helmet")
    }
    
    func lookAtTheMirror() {
        print("Look at little mirror")
    }
    
    func turnSignal() {
        print("Show left hand")
    }
    
    func driveForward() {
        print("pedal")
    }
    
}

class Car: DriveVehicle {
    
    func haveASeat() {
        print("Seat in a car")
    }
    
    func useProtection() {
        print("fasten seat belt")
    }
    
    func lookAtTheMirror() {
        print("Look at the review mirror")
    }
    
    func turnSignal() {
        print("turn on left turn light")
    }
    
    func driveForward() {
        print("push pedal")
    }
    
}

let car = Car()
let bicycle = Bicycle()

print(car.startVehicle())
print(bicycle.startVehicle())
