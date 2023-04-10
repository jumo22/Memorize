//
//  GermanWordsMemoryGame.swift
//  Memorize
//
//  Created by Iulia Moroti on 31.03.2023.
//

import SwiftUI

class GermanWordsMemoryGame: ObservableObject {
    static let germanWords = ["🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍒", "🥥", "🥝", "🍅", "🍆", "🥑", "🥒", "🌽", "🫑", "🥕", "🧄", "🫒", "🧅", "🥔", "🍑", "🍠", "🥬", "🥭", "🍍", "🍫", "🍯", "🍺", "☕️", "🍷", "🍴", "🥄", "🫖", "🧂"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairsOfCards: 10) { pairIndex in
            germanWords[pairIndex]
        }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
 
}
