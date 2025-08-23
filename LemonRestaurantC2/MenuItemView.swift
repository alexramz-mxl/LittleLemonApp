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
                        .tracking(2)
                }
                .font(.caption)
                .foregroundColor(.orange)
                .padding(6)
                .background(.yellow.opacity(0.4))
                .cornerRadius(6)
                
            }
        }
    }
}
/*
#Preview {
    MenuItemView()
}
*/
