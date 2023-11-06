//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Leonardo on 06/11/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: EmojiMemoryGame())
        }
    }
}
