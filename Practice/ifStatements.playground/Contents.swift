import UIKit

var greeting = "Hello, playground"


var waterTemp: Int = 25

if waterTemp >= 100 {
    print( "Boiling water!" )
}else{
    print( "Not boiling water!" )
}

var position = 2

if position == 1{
   print( "Your'e the first place!")
}else if position == 2{
    print("You came second")
}else if position == 3{
    print("You came third")
}else{
    print("You finished in position \(position). Keep training!")
}


var temperature = 74

if temperature >= 68 && temperature <= 75 {
    print("The temperature is just right")
}else{
    print("The temperature is too hot or cold")
}


var mainPower:Bool = false
var batteryPower:Bool = true

if mainPower == true || batteryPower == true {
        print("I can use my phone")
}else{
    print("You should find a charger")
}

var memberVip:Bool = true
var memberCard:Bool = false

if memberVip == true || memberCard == true {
    print("You are a member")
}else{
    print("You are not a member")
}

// --Switch--

let table = 3

switch table {
case 1:
    print("Your'e in the garden")
case 2:
    print("Your'e in the dining room")
default:
    print("Please wait to be seated")
}

let drinks = 3

switch drinks {
case 1:
    print("Your'e selected Coca-Cola!")
case 2:
    print("Your'e selected Pepsi!")
case 3:
    print("Your'e selected a Dr.Pepper")
default:
    print("Please select a drink!")
}
