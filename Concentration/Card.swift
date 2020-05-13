//
//  Card.swift
//  Concentration
//
//  Created by Igor Guryan on 10.03.2020.
//  Copyright © 2020 Igor Guryan. All rights reserved.
//

import Foundation

struct Card: Hashable
{
    func hash(into hasher: inout Hasher) { hasher.combine(identifier) }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
