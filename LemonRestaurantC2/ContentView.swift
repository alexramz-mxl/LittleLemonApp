//
//  ContentView.swift
//  LemonRestaurantC2
//
//  Created by uvminstaller on 05/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Image("littleLemonLogo")
                Image(systemName: "touchid")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, Cochort #2!")
                    .padding()
                NavigationLink(destination:AboutView()){
                    Text("Go to About")
                        .tracking(2)
                        .foregroundColor(.blue)
                }
            }
            .navigationTitle(Text("Home"))
        }
    }

}

#Preview {
    ContentView()
}
