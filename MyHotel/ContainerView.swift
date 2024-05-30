//
//  ContentView.swift
//  MyHotel
//
//  Created by Matthew Collins on 5/27/24.
//

import SwiftUI

struct ContainerView: View {
    var body: some View {
        VStack {
            Image(systemName: "square.and.arrow.up")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContainerView()
}
