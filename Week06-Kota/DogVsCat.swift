//
//  DogVsCat.swift
//  Week06-Kota
//
//  Created by MX PROD on 3/7/23.
//

import Foundation

import SwiftUI

struct Result: View {
    var choice: String

    var body: some View {
        Text("You chose \(choice)")
    }
}

struct DogVsCat: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("DOG OR CAT?")

                NavigationLink(destination: Result(choice: "DOG")) {
                    Text("I like dogs.")
                }

                NavigationLink(destination: Result(choice: "CATS")) {
                    Text("I like cats.")
                }
            }
            .navigationTitle("Choice")
        }
    }
}

struct DogVsCat_Previews: PreviewProvider {
    static var previews: some View {
        DogVsCat()
    }
}
