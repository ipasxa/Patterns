class Driver {
    
    let isGoodDriver: Bool
    let name: String
    
    init(isGoodDriver: Bool, name: String) {
        self.isGoodDriver = isGoodDriver
        self.name = name
    }
    
}

class Car {
    
    var goodDriverIterator: GoodDriverIterator {
        return GoodDriverIterator(drivers: drivers)
    }
    
    private let drivers = [Driver(isGoodDriver: true, name: "Mark"),
                           Driver(isGoodDriver: false, name: "Ivan"),
                           Driver(isGoodDriver: false, name: "Maria"),
                           Driver(isGoodDriver: true, name: "Pavel")]
    
}

extension Car: Sequence {
    
    func makeIterator() -> some GoodDriverIterator {
        return GoodDriverIterator(drivers: drivers)
    }
    
}

class GoodDriverIterator: IteratorProtocol {
    
    private let drivers: [Driver]
    private var current = 0
    
    init(drivers: [Driver]) {
        self.drivers = drivers.filter { $0.isGoodDriver }
    }
    
    func next() -> Driver? {
        defer {
            current += 1
        }
        return drivers.count > current ? drivers[current] : nil
    }
    
    func allDrivers() -> [Driver] {
        return drivers
    }
}

let car = Car()
let goodDriverIterator = car.goodDriverIterator.next()


let goodDriverIteratorWithSequence = car.makeIterator().allDrivers()
print(goodDriverIteratorWithSequence)

