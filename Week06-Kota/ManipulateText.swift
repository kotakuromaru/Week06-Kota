//
//  ManipulateImage.swift
//  Week06-Kota
//
//  Created by MX PROD on 3/21/23.
//

import Foundation
import SwiftUI

struct ManipulateText: View {
    @State private var blurAmount = 0.0
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white

    var body: some View {
        VStack {
            Text("Slide to Blur! \n Tap to Change Color!")
                .multilineTextAlignment(.center)
                .blur(radius: blurAmount)
                .frame(width: 300, height: 300)
                .background(backgroundColor)
                .onTapGesture {
                    showingConfirmation = true
                }
                .confirmationDialog("Change background", isPresented: $showingConfirmation) {
                    Button("Red") { backgroundColor = .red }
                    Button("Green") { backgroundColor = .green }
                    Button("Blue") { backgroundColor = .blue }
                    Button("Cancel", role: .cancel) { }
                } message: {
                    Text("Select a new color")
                }

            Slider(value: $blurAmount, in: 0...20)
                .onChange(of: blurAmount) { newValue in
                    print("New value is \(newValue)")
                }
            
        }
    }
}


struct ManipulateText_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
        ManipulateText()
    }
  }
}
