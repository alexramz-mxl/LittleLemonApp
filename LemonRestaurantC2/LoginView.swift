//
//  LoginView.swift
//  LemonRestaurantC2
//
//  Created by uvminstaller on 09/08/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn: Bool
    @Binding var userName: String
    
    var body: some View {
        NavigationView{
            VStack{
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height:50)
                
                TextField("Enter your user name", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Login"){
                    if userName == "Alex"{
                        isLoggedIn = true
                    }
                }
            }
        }
    }
}

//#Preview {//
//    LoginView()
//}
