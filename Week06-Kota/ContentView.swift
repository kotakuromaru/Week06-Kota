//
//  ContentView.swift
//  Week06-Kota
//
//  Created by MX PROD on 3/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 50) {
                NavigationLink (destination: DogVsCat()) {
                    Text("Dog vs Cat")
                }
                NavigationLink (destination: CharacterSelect()) {
                    Text("Character Select")
                }
                NavigationLink (destination: AudioPlayer()) {
                    Text("Audio Player")
                }
                .navigationTitle("Home Screen")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
