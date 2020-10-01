//
//  User.swift
//  ios-startkit
//
//  Created by Ted Hyeong on 01/10/2020.
//

import Foundation

struct User {
    let email: String
    let fullname: String
    var hasSeenOnboarding: Bool
    let uid: String
    
    init(uid: String, dictionary: [String: Any]) {
        self.uid = uid
        
        self.email = dictionary["email"] as? String ?? ""
        self.fullname = dictionary["fullname"] as? String ?? ""
        self.hasSeenOnboarding = dictionary["hasSeenOnboarding"] as? Bool ?? false
    }
}
