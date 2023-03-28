//
//  ManipulateVideo.swift
//  Week06-Kota
//
//  Created by MX PROD on 3/28/23.
//

import Foundation
import SwiftUI

struct VideoView: View {
  @StateObject private var model = ContentViewModel()

  var body: some View {
    ZStack {
      FrameView(image: model.frame)
        .edgesIgnoringSafeArea(.all)

      ErrorView(error: model.error)

      ControlView(
        comicSelected: $model.comicFilter,
        monoSelected: $model.monoFilter,
        crystalSelected: $model.crystalFilter)
    }
  }
}

struct VideoView_Previews: PreviewProvider {
  static var previews: some View {
    VideoView()
  }
}
