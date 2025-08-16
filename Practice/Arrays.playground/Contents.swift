import UIKit

var dishes:[] = ["Pizza", "Pasta","Soup"]
print(dishes)
print(dishes[0])
print(dishes[1])
print(dishes[2])
print(dishes.count)

var prices:Double[] = [10.99, 12.99, 9.99]
print(prices)
// Mini-excercice

//Create an array with your top 3 favourite desserts and print it

let desserts: [String] = ["Parfait", "Chocolate cake", "Donuts"]
print(desserts)

/*
 for loops
 
 Syntax
 for elemen in collection {
 }  // Do something with element
 */


var students = ["Joseph", "Tom", "Vonda", "Alexis", "Edward", "Andrew","Christian","Justin"]

for element in students {
    print(element)
}

//For each

students.forEach { student in
    print(student)
}

for calories:[Int] = [0, 150, 100]
