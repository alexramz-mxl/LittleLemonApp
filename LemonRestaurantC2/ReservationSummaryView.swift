//
//  ReservationSummaryView.swift
//  LemonRestaurantC2
//
//  Created by uvminstaller on 12/08/25.
//

import SwiftUI

struct ReservationSummaryView: View {
    @Binding var name: String
    @Binding var date: Date
    @Binding var guestCount: Int
    @Binding var allergyNotes: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Reservation Summary")
                .font(.title)
                .padding(.bottom, 10)
            
            Text("Thank you: \(name). Your reservation has been confirmed for \(guestCount) people.")
                .font(.headline)
            
            Text("Date & Time: \(formattedDate(date: date))")
                .font(.subheadline)
                
            Text("Guest #: \(guestCount)")
            
            let cleanedAllergyNotes = allergyNotes.trimmingCharacters(in: .whitespaces)
            if !cleanedAllergyNotes.isEmpty {
                Text("Note: We will accommodate the following allergies: \(allergyNotes)")
                    .foregroundColor(.purple)
            }
            
            Spacer()
        }
        .padding()
    }
    
    func formattedDate(date: Date) ->String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}
//#Preview {
//    ReservationSummaryView()
//}
