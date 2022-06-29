//
//  CarPlaySceneDelegate.swift
//  CarPlay Demo
//
//  Created by Bipin Butala on 6/29/22.
//

import CarPlay

class CarPlaySceneDelegate: UIResponder, CPTemplateApplicationSceneDelegate {
    
    var interfaceController: CPInterfaceController?
    
    // CarPlay connected
    func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene, didConnect interfaceController: CPInterfaceController) {
        print("CARPLAY CONNECTED!")
        self.interfaceController = interfaceController
        
        //create the tab sections
        let tabFaves = CPListItem(text: "Faves", detailText: "subtitle for Faves")
        let tabHistory = CPListItem(text: "History", detailText: "subtitle for history")
        
        let sectionItems = CPListSection(items: [tabFaves, tabHistory])
        
        let listTemplate = CPListTemplate(title: "", sections: [sectionItems])
        
        let tabA: CPListTemplate = listTemplate
        tabA.tabSystemItem = .favorites
        tabA.showsTabBadge = false
        
        let tabBarTemplate = CPTabBarTemplate(templates: [tabA])
        self.interfaceController?.setRootTemplate(tabBarTemplate, animated: true)
    }
    
    // CarPlay disconnected
    private func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene, didDisconnect interfaceController: CPInterfaceController) {
        print("CARPLAY DISCONNECTED!")
        self.interfaceController = nil
    }
}


