//
//  ContentView.swift
//  Joggle
//
//  Created by robin tetley on 11/08/2023.
//.

import SwiftUI

struct ContentView: View {
    
    @StateObject private var game = Game()
    
    var body: some View {
        //places some space between our boards.
        VStack(spacing: 60) {
            LetterGridView(player: game.player2, game: game)
                .rotationEffect(.degrees(180))
            LetterGridView(player: game.player1, game: game)
        }
        .padding(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
