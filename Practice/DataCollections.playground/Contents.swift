import UIKit

/*
 Dictionaries
 Syntax
 
 var dictName = [key1:value1, key2:value2, key3:value3]
 */


var menuPrices: [String: Double] = ["Pizza": 12.99, "Salad": 6.99]
print(menuPrices)

print(menuPrices["Pizza"]!)
print(menuPrices["Salad"]!)


var stock = ["Burger": 5, "Soup": 3]
print(stock)
stock["Soup"] = 4
print(stock)

var ingredients:[String: Int] = ["Tomatoes:": 3, "Cheese:": 2]
ingredients["Lettuce:"] = 4
print(ingredients)


for (key, value) in ingredients {
    print(key, value)
}

for (ingredient, price) in ingredients {
    print(ingredient, price)
}
