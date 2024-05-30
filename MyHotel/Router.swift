//
//  Router.swift
//  MyHotel
//
//  Created by Rehan Chaudhry on 5/30/24.
//

import Foundation

enum Destination: Equatable {
    case landing
    case home
}

class Router: ObservableObject {
    
    @Published var currentScreen: Destination = .landing
    
}

