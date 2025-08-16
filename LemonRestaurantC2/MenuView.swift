//
//  MenuView.swift
//  LemonRestaurantC2
//
//  Created by uvminstaller on 14/08/25.
//

import SwiftUI

struct MenuView: View {
    let menuItems = [
        "Pizza": 9.99,
        "Pasta": 12.99,
        "Salad": 6.99,
        "Soup": 4.75,
        "Steak": 14.99,
        "Chocolate Cake": 5.75,
    ]
    
    @State private var showMessage = false
    @State private var showThankYou = false
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size: 32))
                
                Text("Today's Menu:")
                    .font(.largeTitle)
            }
            .padding()
            
            Text("Total items: \(menuItems.count)")
                .font(.headline)
                .padding(.horizontal)
            
            VStack(spacing: 20) {
                Toggle("Show an special text", isOn: $showMessage)
                    .padding()
                Toggle("Show Thank You Message", isOn: $showThankYou)
                    .padding(.horizontal)
                
                
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
                // VStack
                
                List {
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
#Preview {
    MenuView()
}
