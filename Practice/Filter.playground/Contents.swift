import UIKit

let premium = values.{$0 > 10}
print(premium)

let dishes = {"Burger", "Fries", "Fish", "Pasta", "Fruit"}
let filtered = dishes.filter{$0.hasPrefix("F")}
print(filtered)

let vegetarianMenu:[String] = ["Veggie Salad", "Steak", "Fruit"]
