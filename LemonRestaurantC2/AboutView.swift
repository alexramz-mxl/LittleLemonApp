//
//  AboutView.swift
//  LemonRestaurantC2
//
//  Created by uvminstaller on 05/08/25.
//

import SwiftUI

struct AboutView: View {
    
    let userName = "Alexis"
    @State private var orders = 0
    @State private var userName2 = ""
    @State private var reservationCount = 0
    var body: some View {
        VStack {
            Text("Welcome \(userName) to LittleLemon")
                .kerning(2)
                .font(.title)
                .padding()
            
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("You have ordered: \(orders) times")
            Button("Order again") {
                orders += 1
            }
            
            Button("Reset") {
                orders = 0
            }
            
            TextField("Enter your name", text:$userName2)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Hi \(userName2)")
                .kerning(2)
            Button("Add a reservation"){
                reservationCount += 1
            }
            Text("Reservation: \(reservationCount)")
                .padding()
            Text(String(repeating: "🍽️",count:reservationCount))
                .padding()
            
        }
        .navigationTitle("About Us")
    }
}

#Preview {
        AboutView()
    }



