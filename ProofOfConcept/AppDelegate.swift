//
//  AppDelegate.swift
//  ProofOfConcept
//
//  Created by David Cordero on 16.01.19.
//  Copyright © 2019 David Cordero. All rights reserved.
//

import UIKit


var constraint: NSLayoutConstraint?

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func applicationDidFinishLaunching(_ application: UIApplication) {
        window = UIWindow(frame: UIScreen.main.bounds)
        let firstViewController = FirstViewController()
        let navigationController = UINavigationController(rootViewController: firstViewController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        🛠(navigationController)
    }
}

private func 🛠(_ navigationController: UINavigationController) {
    let view = navigationController.view!
    let navigationBarView = navigationController.view.subviews.last!
    let containerView = navigationController.view.subviews.first!

    let playerContainerView = UIView()
    playerContainerView.backgroundColor = .red
    navigationController.view.addSubview(playerContainerView)

    playerContainerView.translatesAutoresizingMaskIntoConstraints = false
    playerContainerView.topAnchor.constraint(equalTo: navigationBarView.bottomAnchor).isActive = true
    playerContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    playerContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    playerContainerView.heightAnchor.constraint(equalToConstant: 320).isActive = true

    view.sendSubviewToBack(playerContainerView)

    containerView.translatesAutoresizingMaskIntoConstraints = false
    constraint = containerView.topAnchor.constraint(equalTo: playerContainerView.topAnchor, constant: 0)
    constraint?.isActive = true
    containerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    containerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
}
