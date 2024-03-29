//
//  AudioPlayer.swift
//  Week06-Kota
//
//  Created by MX PROD on 3/7/23.
//

import SwiftUI
import AVKit
struct AudioPlayer: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View {
            VStack {
                    Text("Play").font(.system(size: 45)).font(.largeTitle)
                HStack {
                    Spacer()
                    Button(action: {
                        self.audioPlayer.play()
                    }) {
                        Image(systemName: "play.circle.fill").resizable()
                            .frame(width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                    Button(action: {
                        self.audioPlayer.pause()
                    }) {
                        Image(systemName: "pause.circle.fill").resizable()
                            .frame(width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                    }
                    Spacer()
                }
            }
        .onAppear {
            let sound = Bundle.main.path(forResource: "song", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
    }
}
struct AudioPlayer_Previews: PreviewProvider {
    static var previews: some View {
        AudioPlayer()
    }
}
