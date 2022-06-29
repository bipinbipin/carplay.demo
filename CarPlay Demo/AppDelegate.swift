//
//  AppDelegate.swift
//  CarPlay Demo
//
//  Created by Bipin Butala on 6/29/22.
//

import SwiftUI
import CarPlay

class AppDelegate: NSObject, UIApplicationDelegate {

    
    //MARK: didFinishLaunchingWithOptions
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

        print("launch finished - \(Date())")
        return true
    }
    
    
    func application(_ application: UIApplication,
                     configurationForConnecting connectingSceneSession: UISceneSession,
                     options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        debugPrint("******** CARPLAY: Delegate Function in AppDelegate: ROLE => \(connectingSceneSession.role)")
        if(connectingSceneSession.role == UISceneSession.Role.carTemplateApplication) {
            let scene =  UISceneConfiguration(name: "CarPlay Configuration", sessionRole: connectingSceneSession.role)

            scene.delegateClass = CarPlaySceneDelegate.self
                  
            return scene
        } else {
            let scene =  UISceneConfiguration(name: "Phone", sessionRole: connectingSceneSession.role)
                  
            return scene
        }
    }
    
    
}
