import UIKit

protocol SwimBehavior {
    func swim()
}

class ProfessionalSwimmer: SwimBehavior {
    func swim() {
        print("Swim like a pro")
    }
}

class NonSwimmer: SwimBehavior {
    func swim() {
        print("non-swimming")
    }
}

protocol DiveBehavior {
    func dive()
}

class ProfessionalDiver: DiveBehavior {
    func dive() {
        print("Dive like a pro")
    }
}

class NewbieDiver: DiveBehavior {
    func dive() {
        print("dive like a newbie")
    }
}

class NonDiving: DiveBehavior {
    func dive() {
        print("non-diving")
    }
}

class Human {
    
    private var diveBehavior: DiveBehavior!
    private var swimBehavior: SwimBehavior!
    
    func setDiveBehavior(diveBehavior: DiveBehavior) {
        self.diveBehavior = diveBehavior
    }
    
    func setSwimBehavior(swimBehavior: SwimBehavior) {
        self.swimBehavior = swimBehavior
    }
    
    func performSwim() {
        swimBehavior.swim()
    }
    
    func performDive() {
        diveBehavior.dive()
    }
    
    func run() {
        print("running")
    }
    
    init(diveBehavior: DiveBehavior, swimBehavior: SwimBehavior) {
        self.diveBehavior = diveBehavior
        self.swimBehavior = swimBehavior
    }
}

let human = Human(diveBehavior: NonDiving(), swimBehavior: ProfessionalSwimmer())
human.performSwim()
human.performDive()

