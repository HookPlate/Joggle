//
//  LetterGridView.swift
//  Joggle
//
//  Created by robin tetley on 11/08/2023.
//

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
                    Text("X")
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
