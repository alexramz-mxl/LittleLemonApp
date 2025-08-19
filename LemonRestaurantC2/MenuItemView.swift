//
//  MenuItemView.swift
//  LemonRestaurantC2
//
//  Created by uvminstaller on 16/08/25.
//

import SwiftUI

struct MenuItemView: View {
    var item: MenuItem
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading){
                Text(item.name)
                    .font(.headline)
                
                Text("$ \(item.price, specifier: "%.2f")")
                    .foregroundColor(Color.secondary)
            }
            
            Spacer()
            
            if item.price > 10 {
                HStack(spacing: 4){
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text(" Premium")
                        .tracking(1)
                }
                
            }
        }
    }
}
/*
#Preview {
    MenuItemView()
}
*/
