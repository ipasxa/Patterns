protocol Porsche {
    func getPrice() -> Double
    func getDescription() -> String
}

class Boxter {
    
    let price: Double = 120
    let description = "Porsche Boxter"
    
}

extension Boxter: Porsche {
    
    func getPrice() -> Double {
        return price
    }
    
    func getDescription() -> String {
        return description
    }
    
}

class PorscheDecorator: Porsche {
    
    private let decoratedPorsche: Porsche
    
    required init(decoratedPorsche: Porsche) {
        self.decoratedPorsche = decoratedPorsche
    }
    
    func getPrice() -> Double {
        return decoratedPorsche.getPrice()
    }
    
    func getDescription() -> String {
        return decoratedPorsche.getDescription()
    }
    
}

class PremiumAudioSystem: PorscheDecorator {
    
    required init(decoratedPorsche: Porsche) {
        super.init(decoratedPorsche: decoratedPorsche)
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 30
    }
    
    override func getDescription() -> String {
        return super.getDescription() + " with premium audio system"
    }
    
}

class PanoramicSunroof: PorscheDecorator {
    
    required init(decoratedPorsche: Porsche) {
        super.init(decoratedPorsche: decoratedPorsche)
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 20
    }
    
    override func getDescription() -> String {
        return super.getDescription() + " with panoramin sunroof"
    }
    
}

var porscheBoxter: Porsche = Boxter()
porscheBoxter.getDescription()
porscheBoxter.getPrice()

porscheBoxter = PremiumAudioSystem(decoratedPorsche: porscheBoxter)
porscheBoxter.getDescription()
porscheBoxter.getPrice()

porscheBoxter = PanoramicSunroof(decoratedPorsche: porscheBoxter)
porscheBoxter.getDescription()
porscheBoxter.getPrice()
