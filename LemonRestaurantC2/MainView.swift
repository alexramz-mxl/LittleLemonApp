//
//  MainView.swift
//  LemonRestaurantC2
//
//  Created by uvminstaller on 09/08/25.
//

import SwiftUI

struct MainView: View {
    @State private var isLoggedIn = true
    @State private var userName = ""
    
    var body: some View {
        NavigationView{
            if isLoggedIn == true{
            VStack{
                Text("Welcome")
                    .font(.title)
                    .padding(.top)
                
                NavigationLink("Make a reservation",destination: ReservationForm())
                    .padding()
                
                NavigationLink("About us",destination: AboutView())
                    .padding()
                
                Button("LogOut"){
                    isLoggedIn = false
                    userName = ""
                }
                
                }
            }else{
                
                LoginView(isLoggedIn: $isLoggedIn , userName: $userName)
            }
        }
    }
}

#Preview {
    MainView()
}
