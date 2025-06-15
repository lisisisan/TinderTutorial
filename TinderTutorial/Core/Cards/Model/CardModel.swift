//
//  CardModel.swift
//  TinderTutorial
//
//  Created by Ilona on 6/15/25.
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable, Hashable {
    var id: String { return user.id }
}
