//
//  MenuItem.swift
//  LemonRestaurantC2
//
//  Created by uvminstaller on 16/08/25.
//

import Foundation


struct MenuItem: Identifiable {
    var id:UUID = UUID()
    var name: String
    var description: String
    var price: Double
}

struct DessertItem: Identifiable {
    var id:UUID = UUID()
    var name: String
    var description: String
    var price: Double
}
