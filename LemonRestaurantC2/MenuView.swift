//
//  MenuView.swift
//  LemonRestaurantC2
//
//  Created by uvminstaller on 14/08/25.
//

import SwiftUI

struct MenuView: View {
    /*
     let menuItems = [
     "Pizza": 9.99,
     "Pasta": 12.99,
     "Salad": 6.99,
     "Soup": 4.75,
     "Steak": 14.99,
     "Chocolate Cake": 5.75,
     ]
     */
    
    /*
     Computed Properties
     
     Computed property is a property that doesn't store a vakue directly,
     instead, it calculates it's value every time it's accessed, using custom
     logic you define.
     
     Syntax
     
     var propertyName: Type {
     return a calculated value
     }
     */
    
    let menuItems = [
        MenuItem(
            name: "Pizza",
            description: "Cheesy and hot",
            price: 15.0
        ),
        MenuItem(
            name: "Steak",
            description: "Grilled to perfection",
            price: 17.0
        ),
        MenuItem(
            name: "Pasta",
            description: "Spaghetti",
            price: 8.0
        ),
        
        MenuItem(
            name: "Caesar Salad",
            description: "Romaine lettuce with creamy Caesar dressing",
            price: 10.99
        ),
        //Assignment
        MenuItem(
            name: "Tacos",
            description: "Mexican beef tacos with salsa and guacamole spicy",
            price: 9.5
        ),
        MenuItem(
            name: "Ramen",
            description: "Japanese noodle soup with pork",
            price: 12.0
        ),
        
        MenuItem(
            name: "Lasagna",
            description: "Layered pasta with meat and cheese",
            price: 11.15
        ),
    ]
    
    // Computed property
    var sortedMenuItems: [MenuItem] {
        menuItems.sorted {$0.price < $1.price}
    }
    
    var premiumCount: Int {
        let premiumFilter = menuItems.filter { item in
            item.price >= 10
    }
    
        return premiumFilter.count
    }
    
    var premiumCount2: Int {
        menuItems.filter {$0.price >= 10 }.count
    }
    
    var regularCount: Int {
        
    let regularItems = menuItems.filter { item in
        item.price < 10
    }
        
        return regularItems.count
            
        }
    
    var regularCount2: Int {
        menuItems.filter { $0.price < 10}.count
    }
    
    var totalPrice: Double {
        let total = menuItems.reduce(0.0) { accumulator, item in accumulator  + item.price
            
        }
        return total
    }
    
    // Average price
    var averagePrice: Double {
        let prices = menuItems.map { item in
            item.price
    }
    
    let total = prices.reduce(0.0) { accumulator, price in
            accumulator + price
    }
            
    let average = total / Double(prices.count)
            

    return average
            
    }
    
    var averagePrice2: String {
        let prices = menuItems.map { item in
                item.price
        }
            
        let total = prices.reduce(0.0) { accumulator, price in
                accumulator + price
        }
        
        let average = total / Double(prices.count)
            
        return String(format: "%.2f", average)
        
    }
        
    @State private var showMessage:Bool = false
    @State private var showThankYou:Bool = false
    @State private var showDesserts: Bool = false
    
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size: 32))
                
                Text("Today's Menu:")
                    .tracking(2)
                    .font(.largeTitle)
            }
            .padding()
            
            //Assignment #3
            Text("(Average price: $\(averagePrice, specifier: "%.2f)")")
                .tracking(2)
                .foregroundColor(.gray)
                .font(.title3)
            


            /*
            Text("Total items: \(menuItems.count)")
                .font(.headline)
                .padding(.horizontal)
            */
            VStack(spacing: 20) {
                Toggle("Show Premium Items", isOn: $showMessage)
                    .padding()
//                Toggle("Show Thank You Message", isOn: $showThankYou)
  //                  .padding(.horizontal)
                
                
                if  showMessage {
                    Text("You unlocked a surprise!")
                        .font(.title3)
                        .foregroundColor(.green)
                }
                
                if showThankYou {
                    Text("Thanks for visiting Little Lemon Restaurant!")
                        .foregroundColor(.blue)
                        .italic()
                        .padding(.horizontal)
                }
                Button("View Desserts"){
                    showDesserts.toggle()
                }
                .tracking(1)
                .foregroundColor(.white)
                .padding()
                .background(Color(red: 0.6, green: 0.9, blue: 0.6))
                .cornerRadius(10)
                .font(.headline)
                .sheet(isPresented: $showDesserts){
                    DessertView()
                }
            }
//            List (menuItems){ item in
                List(sortedMenuItems){ item in
                MenuItemView(item: item)
            }
            
            Text("Premium: \(premiumCount) | Regular: \(regularCount) | total: $\(totalPrice, specifier: "%.2f")")
                .padding()
                .background(.yellow.opacity(0.2))
                .cornerRadius(8)
            
        }
    }
}
            // VStack
            
            /*List {
             ForEach(menuItems.sorted(by: {$0.key > $1.key}), id: \.key){(name, price) in
             HStack {
             VStack(alignment: .leading){
             Text(name)
             .font(.headline)
             
             Text("$ \(price, specifier:"%.2f")")
             .foregroundColor(.secondary)
             }
             
             Spacer()
             
             if price < 7 {
             Text("Value")
             .font(.caption)
             .padding(6)
             .background(Color.green)
             .foregroundColor(.white)
             .cornerRadius(5)
             }
             }
             
             }
             }
             }
             }
             }
             }
             */
             #Preview {
             MenuView()
             }
             
