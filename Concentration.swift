//
//  Concentration.swift
//  concentration
//
//  Created by tamerali on 6/23/20.
//  Copyright © 2020 tamerali. All rights reserved.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    var indexOfOneOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched{
            if let matchIndex = indexOfOneOnlyFaceUpCard, matchIndex != index {
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneOnlyFaceUpCard = nil
            } else {
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneOnlyFaceUpCard = index
            }
        }
    }
    init(numberOfPairsOfCards: Int){
        for _ in 1...numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
    }
    
}

