//
//  MainTabBarController.swift
//  Makestagram
//
//  Created by Ava Crnkovic-Rubsamen on 7/11/17.
//  Copyright © 2017 Ava Crnkovic-Rubsamen. All rights reserved.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        delegate = self
        // 2
        tabBar.unselectedItemTintColor = .black
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController.tabBarItem.tag == 1 {
            // present photo taking action sheet
            print("take photo")
            
            return false
        } else {
            return true
        }
    }
}
