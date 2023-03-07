//
//  AudioShuffler.swift
//  Week06-Kota
//
//  Created by MX PROD on 3/7/23.
//

import Foundation
import SwiftUI

struct CharacterSelect: View {
    @State private var characters = ["Link", "Pikachu", "StarPlat"]
    @State private var selectedCharacter: String?

    var body: some View {
        NavigationSplitView {
            List(characters, id: \.self, selection: $selectedCharacter, rowContent: Text.init)
        } detail: {
            Image(selectedCharacter ?? "Link")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250.0, height: 250.0, alignment: .center)
//                .clipShape(Circle())
            Text(selectedCharacter ?? "Please choose an audio file.")
        }
    }
}



// print does not show in preview
// NavigationView already embeded in simultor
struct CharacterSelect_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
        CharacterSelect()
    }
  }
}
