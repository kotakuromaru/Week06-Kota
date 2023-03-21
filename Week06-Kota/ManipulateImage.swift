//
//  ManipulateImage.swift
//  Week06-Kota
//
//  Created by MX PROD on 3/21/23.
//

import Foundation
import SwiftUI


struct ManipulateImage: View {
    
    @State private var image: Image?
    @State private var filterIntensity = 0.5
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Rectangle()
                        .fill(.primary)

                    Text("Tap to select a picture")
                        .foregroundColor(.white)
                        .font(.headline)

                    image?
                        .resizable()
                        .scaledToFit()
                }
                .onTapGesture {
                    // select an image
                    showingImagePicker = true
                }

//                HStack {
//                    Text("Intensity")
//                    Slider(value: $filterIntensity)
//                }
//                .padding(.vertical)
//
//                HStack {
//                    Button("Change Filter") {
//                        // change filter
//                    }
//
//                    Spacer()
//
//                    Button("Save") {
//                        // save the picture
//                    }
//                }
            }
            .padding([.horizontal, .bottom])
            .navigationTitle("Image Manipulator")
            .sheet(isPresented: $showingImagePicker) {
                ImagePicker(image: $inputImage)
            }
            .onChange(of: inputImage) { _ in loadImage() }
        }
    }
    
    func save() {
    }
    
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
}

struct ManipulateImage_Previews: PreviewProvider {
    static var previews: some View {
        ManipulateImage()
    }
}

