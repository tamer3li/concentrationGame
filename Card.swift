//
//  Card.swift
//  concentration
//
//  Created by tamerali on 6/23/20.
//  Copyright © 2020 tamerali. All rights reserved.
//

import Foundation

struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    init(){
        
        self.identifier = Card.getUniqueIdentifier()
    }
    
}
