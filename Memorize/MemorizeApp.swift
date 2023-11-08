//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Leonardo on 06/11/23.
//

import SwiftUI

@main
struct LectureMemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
