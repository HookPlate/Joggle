//
//  ContentView.swift
//  Joggle
//
//  Created by robin tetley on 11/08/2023.
//. let's see if I'm back hooked up to github

import SwiftUI

struct ContentView: View {
    //
    
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("Show Game") {
                    GameView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
