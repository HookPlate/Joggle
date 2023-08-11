//
//  ContentView.swift
//  Joggle
//
//  Created by robin tetley on 11/08/2023.
//.

import SwiftUI

struct ContentView: View {
    var body: some View {
        //places some space between our boards.
        VStack(spacing: 60) {
            LetterGridView()
                .rotationEffect(.degrees(180))
            LetterGridView()
        }
        .padding(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
