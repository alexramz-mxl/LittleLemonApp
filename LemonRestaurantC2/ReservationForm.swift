//
//  ReservationForm.swift
//  LemonRestaurantC2
//
//  Created by uvminstaller on 08/08/25.
//

import SwiftUI

struct ReservationForm: View {
    @State private var userName: String = ""
    @State private var guestCount: Int = 1
    @State private var reservationDate = Date()
    @State private var allergyNotes = ""
    @State private var showSummary = false

    var body: some View {
        NavigationStack{
            Form {
                Section(header: Text("Reservation Details")) {
                    TextField("Type your name", text:$userName)
                    if userName.isEmpty {
                        Text("Please enter your name")
                            .foregroundColor(.red)
                    }
                    
                    Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
                    
                    
                    if guestCount > 5 {
                        Text("For large parties, we will contact you")
                            .foregroundColor(.yellow)
                    }
                    
                    DatePicker("Date", selection: $reservationDate,
                               displayedComponents: [.date, .hourAndMinute])
                    TextField("Any allergies?", text: $allergyNotes)
                    
                    Button("Confirm Reservation"){
                        if !userName.isEmpty {
                            showSummary = true
                        }
                        
                    }
                    .disabled(userName.isEmpty)
                }
            }
        }
                .navigationTitle("Book a Table")
                .navigationDestination(isPresented: $showSummary) {
                    ReservationSummaryView(
                        name: $userName,
                        date: $reservationDate,
                        guestCount: $guestCount,
                        allergyNotes: $allergyNotes)
                        }
                }
            }

#Preview {
    ReservationForm()
}
