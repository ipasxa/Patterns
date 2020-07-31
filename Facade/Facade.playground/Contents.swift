class FruitShop {
    
    func buyFruits() -> String{
        return "Fruits"
    }
    
}

class MeatShop {
    
    func buyMeat() -> String{
        return "Meat"
    }
    
}


class MilkShop {
    
    func buyMilk() -> String{
        return "Milk"
    }
    
}


class SweetShop {
    
    func buySweet() -> String{
        return "Sweets"
    }
    
}

// Facade
class BreadShop {
    
    func buyBread() -> String{
        return "Bread"
    }
    
}

class Supermarket {
    
    let fruitShop = FruitShop()
    let meatShop = MeatShop()
    let milkShop = MilkShop()
    let sweetShop = SweetShop()
    let breadShop = BreadShop()
    
    func buyProduct() -> String {
        var products = ""
        products += fruitShop.buyFruits() + ", "
        products += meatShop.buyMeat() + ", "
        products += milkShop.buyMilk() + ", "
        products += sweetShop.buySweet() + ", "
        products += breadShop.buyBread()
        
        return "I bought: " + products
    }
    
}

let sm = Supermarket()
print(sm.buyProduct())
