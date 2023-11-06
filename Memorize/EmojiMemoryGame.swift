//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Leonardo on 06/11/23.
//

import SwiftUI

class EmojiMemoryGame: ObservedObject {
        static let emojis = ["🚗", "🚀", "🚲", "🛴", "🚤", "✈️", "🚁", "🚂", "🚜", "🚚", "🛵", "🛸", "🛶", "⛵️", "🏍", "🚄", "🚔", "🚍", "🚘", "🚖"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairs0fCards: 3) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame‹String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
    model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
    model.choose (card)
    }
    
}
