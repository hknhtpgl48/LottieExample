//
//  ContentView.swift
//  LottieExample
//
//  Created by Hakan Hatipoğlu on 13.03.2024.
//

import SwiftUI
import Lottie

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    Text("Local animation")
                    LottieView(animation: .named("biker"))
                        .playing()// use looping() to play animation forever
                    .padding()
                }
                Spacer()
                VStack {
                    Text("From URL")
                    LottieView {
                        await LottieAnimation.loadedFrom(url: URL( string: "https://lottie.host/375c4fde-08c2-47f9-9254-ecec67215a14/39t1wB2ttV.json")!)
                    } placeholder: {
                        ProgressView()
                    }
                    .playing()
                }
            }
            .padding()
            .navigationTitle("Lottie Example")
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(.teal)
        }
    }
}

#Preview {
    ContentView()
}
