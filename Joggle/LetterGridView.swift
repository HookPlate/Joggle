//
//  LetterGridView.swift
//  Joggle
//
//  Created by robin tetley on 11/08/2023.
//
//Take a look and you'll see that instead of putting any of this in ContentView he's broken the grid out into it's own view (here) then the individual tile out into it's own file.

import SwiftUI

struct LetterGridView: View {
    var columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var body: some View {
        ZStack {
            LazyVGrid(columns: columns) {
                //spread the below data across the above amount of columns
                ForEach(0..<16, id: \.self) { index in
                    //Again that closure is the last selectTile function from LetterView.
                    LetterView(letter: "X", selectionColor: .red) {
                        
                    }
                }
            }
        }
        //make this think square at all times.
        .aspectRatio(1, contentMode: .fit)
    }
}

struct LetterGridView_Previews: PreviewProvider {
    static var previews: some View {
        LetterGridView()
    }
}
