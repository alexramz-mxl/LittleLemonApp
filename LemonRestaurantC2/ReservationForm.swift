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

                
                if name.isEmpty {
                    Text("Please enter your name")
                        .foregroundColor(.red)
                }

                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)

            
                if guestCount > 5 {
                    Text("For large parties, we will contact you")
                        .foregroundColor(.yellow)
                }
            }

            Section {
                Button("Confirm Reservation") {
                    
                }
                .disabled(name.isEmpty)
            }
        }
        .navigationTitle("Book a Table")
    }
}

#Preview {
    ReservationForm()
}

