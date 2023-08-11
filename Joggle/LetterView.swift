//
//  LetterView.swift
//  Joggle
//
//  Created by robin tetley on 11/08/2023.
//

import SwiftUI
//Just holds one letter and its styling, in our grid

struct LetterView: View {
    var letter: String
    var isSelected = false
    var selectionColor: Color
    //a function to call when this tile is selected.
    var selectTile: () -> Void
    
    var body: some View {
        Button(action: selectTile) {
            //he worked out the size that looks good from an iphone pro max down to an iphone se.
            Text(letter)
                .font(.system(size: 44).bold())
                .foregroundStyle(isSelected ? .white : .primary)
                //more modifiers to come.
        }
    }
}

struct LetterView_Previews: PreviewProvider {
    static var previews: some View {
        //that curly bracket is calling that selectTile function because it's the last param
        LetterView(letter: "X", selectionColor: .blue) {
            //do nothing
        }
    }
}
