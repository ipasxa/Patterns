// adaptee
class SimpleCar {
    
    func sound() -> String {
        return "Tr-tr-tr"
    }
    
}

// target
protocol SupercarProtocol {
    func makeNoise() -> String
}

class Supercar: SupercarProtocol {
    
    func makeNoise() -> String {
        return "wroom-wroom"
    }
    
}

// adapter
class SupercarAdapter: SupercarProtocol {
    
    var simpleCar: SimpleCar
    
    init(simpleCar: SimpleCar) {
        self.simpleCar = simpleCar
    }
    
    func makeNoise() -> String {
        return simpleCar.sound()
    }
    
}





