//
//  SceneDelegate.swift
//  CarPlay Demo
//
//  Created by Bipin Butala on 6/29/22.
//

import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
//    var window: UIWindow?
//
//    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
//
//        let contentView = ContentView()
//
//        if let windowScene = scene as? UIWindowScene {
//           let window = UIWindow(windowScene: windowScene)
//           window.rootViewController = UIHostingController(rootView: contentView)
//           self.window = window
//           window.makeKeyAndVisible()
//        }
//    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
      // ...
        debugPrint("SceneDelegate sceneWillEnterForeground.")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
      // ...
        debugPrint("SceneDelegate sceneDidBecomeActive.")
    }

    func sceneWillResignActive(_ scene: UIScene) {
      // ...
        debugPrint("SceneDelegate sceneWillResignActive.")
    }

    
}
