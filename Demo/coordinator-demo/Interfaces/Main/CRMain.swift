//
//  CRTabBar.swift
//  coordinator-demo
//
//  Created by Evegeny Kalashnikov on 5/30/19.
//  Copyright © 2019 Evgeny Kalashnikov. All rights reserved.
//

import UIKit
import Coordinator

class CRMain: TabBarCoordinator {

    var storyboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
    
    var identifier: String {
        return "Main"
    }
    
    private(set) var window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    private(set) weak var tabBarController: UITabBarController?
    
    func configuration(tabBarController: UITabBarController) throws {
        let tab1 = CRTab1()
        let tab2 = CRTab2()
        let tab3 = CRTab3()
        
        tabBarController.viewControllers = [
            try self.tab(for: tab1),
            try self.tab(for: tab2),
            try self.tab(for: tab3)
        ]
    }
    
    func setTabBarController(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
    }
}
