//
//  ReservationForm.swift
//  LemonRestaurantC2
//
//  Created by uvminstaller on 08/08/25.
//

import SwiftUI

struct ReservationForm: View {
    @State var name: String = ""
    @State var guestCount: Int = 1
    
    var body: some View {
        Form {
            Section(header: Text("Reservation Details")) {
                TextField("Your name", text: $name)
                
                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
            }
        }
        .navigationTitle("Book a Table")
    }
}

#Preview {
    ReservationForm()
}
