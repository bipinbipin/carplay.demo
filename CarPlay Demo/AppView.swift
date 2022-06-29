//
//  CarPlay_DemoApp.swift
//  CarPlay Demo
//
//  Created by Bipin Butala on 6/29/22.
//

import SwiftUI

@main
struct AppView: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { phase in
            switch phase {
            case .active:
                print("Scene Phase: active")
            case .inactive:
                print("Scene Phase: inactive")
            case .background:
                print("Scene Phase: background")
            @unknown default:
                print("Scene Phase: unknown activity")
            }
        }
    }
}
