//
//  Game.swift
//  Joggle
//
//  Created by robin tetley on 11/08/2023.
//

import Foundation
 
class Game: ObservableObject {
    //keeps track of which player scored which words. Instead of stoppoing the players by telling them that the other player has found that word already (that would slow the game down a lot) we let them keep spelling but track who got them first.
    //the string is the word, the Player is who found it first.
    var scores = [String: Player]()
    
    var dice = [
        ["A", "A", "E", "E", "G", "N"],
        ["A", "B", "B", "J", "O", "O"],
        ["A", "C", "H", "O", "P", "S"],
        ["A", "F", "F", "K", "P", "S"],
        ["A", "O", "O", "T", "T", "W"],
        ["C", "I", "M", "O", "T", "U"],
        ["D", "E", "I", "L", "R", "X"],
        ["D", "E", "L", "R", "V", "Y"],
        ["D", "I", "S", "T", "T", "Y"],
        ["E", "E", "G", "H", "N", "W"],
        ["E", "E", "I", "N", "S", "U"],
        ["E", "H", "R", "T", "V", "W"],
        ["E", "I", "O", "S", "S", "T"],
        ["E", "L", "R", "T", "T", "Y"],
        ["H", "L", "N", "N", "R", "Z"],
        ["H", "I", "M", "N", "U", "Qu"]
    ]
    
    var player1 = Player(color: .mint)
    var player2 = Player(color: .orange)
    var tiles = [String]()
    
    init() {
        reset()
    }
    
    func reset() {
        //picks one random letter from each array in dice thus resetting the tiles var.
        tiles = dice.shuffled().map {
            $0.randomElement() ?? "X"
        }
        scores.removeAll()
        player1.reset()
        player2.reset()
    }
}
