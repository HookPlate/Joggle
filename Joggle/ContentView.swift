//
//  ContentView.swift
//  Joggle
//
//  Created by robin tetley on 11/08/2023.
//.

import SwiftUI

struct ContentView: View {
    
    @StateObject private var game = Game()
    // place the timer view into a computed property then display it once normally and once with rotation
    var timeRemainingText: Text {
        if game.timeRemaining > 0 {
            return
            Text(Date.now.addingTimeInterval(game.timeRemaining), style: .timer)
        } else {
            return Text("0:00")
        }
    }
    
    var body: some View {
        //places some space between our boards.
        ZStack {
            VStack(spacing: 60) {
                LetterGridView(player: game.player2, game: game)
                    .rotationEffect(.degrees(180))
                LetterGridView(player: game.player1, game: game)
            }
            .padding(10)
            
            HStack {
                Spacer()
                
                timeRemainingText
                    .rotationEffect(.degrees(180))
                
                Spacer()
                
                timeRemainingText
                
                Spacer()
            }
            .foregroundStyle(.white)
            .font(.system(size: 36).monospacedDigit())
            .frame(maxWidth: .infinity)
            .frame(height: 40)
            .background(.indigo)
        }
        .sheet(isPresented: $game.showingResults, onDismiss: game.reset) {
            ResultsView(game: game)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
