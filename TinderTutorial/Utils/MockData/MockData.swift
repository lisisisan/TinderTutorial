//
//  MockData.swift
//  TinderTutorial
//
//  Created by Ilona on 6/15/25.
//

import Foundation

struct MockData {
    
    static let users: [User] = [
        .init(id: UUID().uuidString, fullname: "Jane Rabbit", age: 27, profileImageURLs: ["jane_1", "jane_2", "jane_3"]),
        .init(id: UUID().uuidString, fullname: "Megan Fox", age: 37, profileImageURLs: ["megan_1", "megan_2", "megan_3"]),
        .init(id: UUID().uuidString, fullname: "Mishel Tiger", age: 25, profileImageURLs: ["mishel_1", "mishel_2"])
    ]
}
