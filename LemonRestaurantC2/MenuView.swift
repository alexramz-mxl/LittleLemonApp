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
            
            VStack(spacing: 20) {
                Toggle("Show an special text", isOn: $showMessage)
                    .padding()
            }
            
            if  showMessage {
                Text("You unlocked a surprise!")
                    .font(.title3)
                    .foregroundColor(.green)
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
                    }
                    
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
