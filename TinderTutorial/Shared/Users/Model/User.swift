//
//  User.swift
//  TinderTutorial
//
//  Created by Ilona on 6/15/25.
//

import Foundation

struct User: Identifiable, Hashable {
    let id: String
    let fullname: String
    var age: Int
    var profileImageURLs: [String]
}
