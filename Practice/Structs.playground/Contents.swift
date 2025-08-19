import UIKit

/*
 Structs
 Custom data type thst lets you group related values and beheviors together.
 
 
 It can contains:
 -Propoerties (Variables/Constants)
 -Methods
 -Initializers
 -Computed properties
 -Protocols
 
 Syntax
 struct SructName {
    let constantName: ElementType
    var variableName: ElementType
 }
 */

struct MenuItem {
    var name: String
    var price:  Double
    var description: String
}

struct Dish {
    var name: String
    var price: Double
    
    func isPremium() -> Bool {
        return price > 10
    }
}

//Instance
let pasta = Dish(name: "Pasta", price: 10.0)
print(pasta)
print(pasta.name)
print(pasta.price)

//Example #2
struct Drink {
    var name: String
    var isCold: Bool
    var size: String
    
    func isLarge() -> Bool {
        return size == "Large"
    }
}

let coffee = Drink(name: "Capuccino", isCold: false, size: "Small")
coffee.isLarge()

