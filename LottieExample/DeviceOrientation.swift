//
//  DeviceOrientation.swift
//  LottieExample
//
//  Created by Hakan Hatipoğlu on 13.03.2024.
//

import SwiftUI
import Lottie

struct DeviceOrientation: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        GeometryReader { geo in
            NavigationStack {
                VStack {
//                    Text("Ekranın Durumu: \(verticalSizeClass == .compact ? "Yatay" : "Dikey")")
//                    Text("Ekranın Durumu: \(horizontalSizeClass == .regular ? "Yatay" : "Dikey")")
                   Text("Ekranın Durumu: \(geo.size.width > geo.size.height ? "Yatay" : "Dikey")")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .background(.blue)
                        .clipShape(.capsule)
                    LottieView(animation: .named("compass"))
                        .looping()
                        .frame(width: 300, height: 200)
                        .padding()
                        .shadow(radius: 10)
                }
                .navigationTitle("Device Orientation")
            }
        }
    }
}

#Preview {
    DeviceOrientation()
}
