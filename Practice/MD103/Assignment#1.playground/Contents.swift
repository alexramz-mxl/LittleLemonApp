import UIKit

var numbers = [1, 2, 3, 4, 5]

numbers.remove(at: 0)

if (numbers.contains(4)) {
    
    print("Yes it is")
    
}else {
    print( "false")
    
}
    
var countries = [
 "Canada":"Ottawa",
 "Rusia": "Moscú",
 "Japan": "Tokio"
]

countries["France"] = "Paris"

print(countries.values)



//ASSIGNMENT #1

let steudentNames: [String] = ["Alice", "Bob", "Charlie"]

let studentGrades: [String: [Int]] = [
    "Alice": [89, 67, 59],
    "Bob": [92, 88, 76],
    "Charlie": [78, 94, 85]
]

print("Student Record Summary: \n")

var bestStudent = ""
var highestAverage: Double = 0.0

for (student, grades) in studentGrades {
    print("Student: \(student)")
    print("Grades: \(grades) \n")
    
    let avg = Double(grades.reduce(0, +)) / Double(grades.count)
    print("Average:  \(String(format: "%.2f", avg))\n")
    
    if avg > highestAverage {
        highestAverage = avg
        bestStudent = student
    }
}

print("Top student: \(bestStudent), \nwith average: \(String(format: "%.2f", highestAverage)) \nCongratulations: \(bestStudent)!")
