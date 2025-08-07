//
//  AboutView.swift
//  LemonRestaurantC2
//
//  Created by uvminstaller on 05/08/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("Welcome to LittleLemon")
                .kerning(2)
                .font(.title)
                .padding()
            
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
        }
        .navigationTitle("About Us")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}


