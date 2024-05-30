//
//  ContainerView.swift
//  MyHotel
//
//  Created by Rehan Chaudhry on 5/30/24.
//

import SwiftUI

struct ContainerView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        ZStack {
            switch router.currentScreen {
            case .landing:
                LoginView()
            case .home:
                HomeView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.mhNavyBlue
                .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    ContainerView()
        .environmentObject(Router())
}
