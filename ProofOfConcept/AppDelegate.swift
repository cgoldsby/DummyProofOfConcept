//
//  AppDelegate.swift
//  ProofOfConcept
//
//  Created by David Cordero on 16.01.19.
//  Copyright © 2019 David Cordero. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func applicationDidFinishLaunching(_ application: UIApplication) {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let firstViewController = FirstViewController()
        let navigationController = UINavigationController(navigationBarClass: CustomNavigationBar.self, toolbarClass: nil)
        navigationController.setViewControllers([firstViewController], animated: true)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
