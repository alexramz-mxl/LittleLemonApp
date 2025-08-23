//
//  CustomerSummaryView.swift
//  LemonRestaurantC2
//
//  Created by uvminstaller on 21/08/25.
//

import SwiftUI

struct CustomerSummaryView: View {
    
    @State private var showLoyaltyMember: Bool = false
    
    @State private var customer = Customer (
        name:"Alex",
        email: "alex@example.com",
        isLoyaltyMember: true,
        favoriteDishes: ["Pizza", "Pasta"]
    )
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("CUSTOMER SUMMARY")
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.title)
                .bold()
                .tracking(2)
                .padding(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.black, lineWidth: 1)
                    )
                
            
            Text("Name: \(customer.name)")
            
            Text("Email: \(customer.email)")
            
            Text("Loyalty Member:")
            
            if customer.isLoyaltyMember == true {
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("Is Loyalty Member")
                }
            }
            
            Text("Favorite Dishes: \(customer.favoriteDishes.joined(separator: ","))")
            
            Divider()
            
            Toggle("Loyalty Member", isOn: $customer.isLoyaltyMember)
        }
        .padding()
                    
        }
        
    }

#Preview {
    CustomerSummaryView()
}
