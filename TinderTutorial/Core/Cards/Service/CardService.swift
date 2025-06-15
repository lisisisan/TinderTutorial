//
//  CardService.swift
//  TinderTutorial
//
//  Created by Ilona on 6/15/25.
//

import Foundation

// dependecy injection pattern for ViewModel
struct CardService {
    func fetchCardModels() async throws -> [CardModel] {
        let users = MockData.users
        
        return users.map({ CardModel.init(user: $0) })
    }
}
