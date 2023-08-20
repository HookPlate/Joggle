//
//  Player.swift
//  Joggle
//
//  Created by robin tetley on 11/08/2023.
//

import SwiftUI

class Player: ObservableObject {
    var usedWords = [String]()
    var color: Color
    
    //positions of the letters on the board they've tapped so far. In this way we can check its adjacent neighbours and deselect them later on..
    @Published var selectedTiles = [Int]()
    
    init(color: Color) {
        self.color = color
    }
    //resets that players game
    func reset() {
        selectedTiles.removeAll()
        usedWords.removeAll()
    }
    
    func trySelecting(_ index: Int, in game: Game) -> String? {
        selectedTiles.append(index)
        return nil
    }
}
