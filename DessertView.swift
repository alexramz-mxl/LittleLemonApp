//
//  DessertView.swift
//  LemonRestaurantC2
//
//  Created by uvminstaller on 18/08/25.
//

import SwiftUI

struct DessertView: View {
    
    let desserts = [
        DessertItem(
            name: "Chocolate Cake",
            description: "Rich and moist",
            price: 5.75
        ),
        DessertItem(
            name: "Tiramisu",
            description: "Coffee-flavored Italian dessert",
            price: 6.50
        ),
        DessertItem(
            name: "Dark Chocolate ice cream",
            description: "Double chocolate with syrup",
            price: 4.25
        )
    ]
    var body: some View {
        NavigationView {
            List(desserts) { dessert in
                VStack(alignment: .leading) {
                    Text(dessert.name)
                        .font(.headline)
                    Text(dessert.description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Text(String(format: "%.2f", dessert.price))
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 4)
            }
        }
    }
}

#Preview {
    DessertView()
}
