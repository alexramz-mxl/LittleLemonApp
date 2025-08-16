import UIKit

/*
 func funtionName(parameterName: DataType) -> DataType{
 
    this is the body of the function
 }
 */

func greet(person: String) -> String{
        let greeting = "Hello " + person + "!"
        return greeting
}

let message = greet(person: "Alex")
print(message)

func greeting(person: String, formally: Bool = false) -> String{
    if formally{
        return "Greeting " + person + "!"
    }else{
        return "Hi " + person + "!"
    }
}

print(greeting(person:"Person",formally: true))
print(greeting(person:"Jane",formally: false))


func calculateTotal(price: Double, quantity: Int)->Double{
    return price * Double(quantity)
}

let total = calculateTotal(price: 15.45, quantity: 4)

print(total)

//Challenge

func deliveryTime(minutes: Int)->String{
    return "Ready in \(minutes) minutes"
}

let messages = deliveryTime(minutes: 30)
print(messages)


//Create a function to calculate price + tax and show the result


func total(price: Double, tax: Double)->String{
        let taxAmount = price * tax / 100
        let totalPrice = price + taxAmount
    return String(format: "Your total is: $%.2f", totalPrice)
}

let result = total(price: 10, tax: 0.5)
print(result)

//Create a function applyDiscount(price: Double, discount: Double) that
//receives

