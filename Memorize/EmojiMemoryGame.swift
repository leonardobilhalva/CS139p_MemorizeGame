//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Leonardo on 06/11/23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
        static let emojis = ["🚗", "🚀", "🚲", "🛴", "🚤", "✈️", "🚁", "🚂", "🚜", "🚚", "🛵", "🛸", "🛶", "⛵️", "🏍", "🚄", "🚔", "🚍", "🚘", "🚖"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 3) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
    return model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
    model.choose(card)
    }
    
}
