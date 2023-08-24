//
//  GameView.swift
//  Joggle
//
//  Created by robin tetley on 23/08/2023.
//

import SwiftUI

struct GameView: View {
    
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
        GeometryReader { geo in
            ZStack {
                VStack(spacing: 50) {
                    LetterGridView(player: game.player2, game: game)
                        .rotationEffect(.degrees(180))
                    LetterGridView(player: game.player1, game: game)
                }
                        .frame(width: geo.size.width / 1.015 ,height: geo.size.height / 1.015)
  
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
//            .frame(width: geo.size.width / 1.05 ,height: geo.size.height / 1.05)
            .sheet(isPresented: $game.showingResults, onDismiss: game.reset) {
                ResultsView(game: game)
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
