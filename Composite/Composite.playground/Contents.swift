protocol Coworker {
    func hire(coworker: Coworker)
    func getInfo()
    var lvl: Int { get }
}

class Manager: Coworker {
    var lvl: Int
    private var coworkers = [Coworker]()
    
    init(lvl: Int) {
        self.lvl = lvl
    }
    
    func hire(coworker: Coworker) {
        self.coworkers.append(coworker)
    }
    
    func getInfo() {
        print(self.lvl.description + " level manager")
        for coworker in coworkers {
            coworker.getInfo()
        }
    }
    
}

class LowLevelManager: Coworker {
    var lvl: Int
    
    init(lvl: Int) {
        self.lvl = lvl
    }
    
    func hire(coworker: Coworker) {
        print("Can not hire")
    }
    
    func getInfo() {
        print(self.lvl.description + " level manager")
    }
    
}

let topMngr = Manager(lvl: 1)
let mngrLvl2 = Manager(lvl: 2)
let mngrLvl3_1 = Manager(lvl: 3)
let mngrLvl3_2 = Manager(lvl: 3)
let mngrLvl10 = Manager(lvl: 4)

topMngr.hire(coworker: mngrLvl2)
mngrLvl2.hire(coworker: mngrLvl3_1)
mngrLvl2.hire(coworker: mngrLvl3_2)
mngrLvl3_1.hire(coworker: mngrLvl10)

topMngr.getInfo()

