//
//  MyHotelApp.swift
//  MyHotel
//
//  Created by Matthew Collins on 5/27/24.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct MyHotelApp: App {
    var body: some Scene {
        WindowGroup {
            ContainerView()
                .environmentObject(Router())
        }
    }
}
