//
//  Customer.swift
//  LemonRestaurantC2
//
//  Created by uvminstaller on 21/08/25.
//

import Foundation


struct Customer {
    var name: String
    var email: String
    var isLoyaltyMember: Bool
    var favoriteDishes: [String]


//Add a method called customerSummary() that returns a string summary like:
    func customerSummary() -> String {
        let loyalty = isLoyaltyMember ? "is a loyalty member" : "Not a loyalty member"
        let dishes = favoriteDishes.joined(separator: ",")
        
        return "\(name) \(loyalty). Favourite Dishes: \(dishes)."
    }
}
