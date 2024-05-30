//
//  ContentView.swift
//  MyHotel
//
//  Created by Matthew Collins on 5/27/24.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Image(systemName: "square.and.arrow.up")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button {
                withAnimation {
                    router.currentScreen = .landing
                }
            } label: {
                Text("GO BACK")
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .transition(.move(edge: .trailing))
    }
}

#Preview {
    HomeView()
        .environmentObject(Router())
}
