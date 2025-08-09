import UIKit

var greeting = "Hello, playground"

let day = "Thursday"
let dailyTemp = 75

print("Today is \(day), and the temperature is: \(dailyTemp)")

var temperature = 85
print("The temperature in the afternoon is: \(temperature)")

temperature = dailyTemp
print("The temperature in the evening is: \(temperature)")

// ----Game Score----
print("The game score")
let levelScore = 10
var gameScore = 0

gameScore += levelScore
print("The game score is: \(gameScore)")

// int - 10
// double - 50.4
// string = "hello"

var levelBonusScore = 10.0
levelBonusScore = 20

print("The level bonus score is: \(levelBonusScore)")
gameScore += Int(levelBonusScore)
print("The game final score is: \(gameScore)")

let levelLowerScore = 60
let levelHighestScore = 100
let levels = 10

let levelScoreDiff = levelHighestScore - levelLowerScore
let levelAv = levelScoreDiff / levels

print("The level score is: \(levelAv)")


let dishName = "Pizza"
var orderCount = 2
print("\(dishName) order count is: \(dishName)")

let dishName2: String = "Pasta"
let price:Double = 9.99
let inStock: Bool = true
let qty : Int = 3
