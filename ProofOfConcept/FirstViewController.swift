//
//  FirstViewController.swift
//  ProofOfConcept
//
//  Created by David Cordero on 16.01.19.
//  Copyright © 2019 David Cordero. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    private let embeedPlayerButton: UIButton = {
        let embeedPlayerButton = UIButton()
        embeedPlayerButton.setTitle("Embeed player", for: .normal)
        embeedPlayerButton.setTitleColor(.brown, for: .normal)
        embeedPlayerButton.addTarget(self, action: #selector(embeedPlayerButtonWasPressed), for: .touchUpInside)
        return embeedPlayerButton
    }()
    
    private let unEmbeedPlayerButton: UIButton = {
        let unEmbeedPlayerButton = UIButton()
        unEmbeedPlayerButton.setTitle("Unembeed player", for: .normal)
        unEmbeedPlayerButton.setTitleColor(.brown, for: .normal)
        unEmbeedPlayerButton.addTarget(self, action: #selector(unEmbeedPlayerButtonWasPressed), for: .touchUpInside)
        unEmbeedPlayerButton.isHidden = true
        return unEmbeedPlayerButton
    }()
    
    private let pushButton: UIButton = {
        let pushButton = UIButton()
        pushButton.setTitle("Push me !", for: .normal)
        pushButton.setTitleColor(.brown, for: .normal)
        pushButton.addTarget(self, action: #selector(pushMeButtonWasPressed), for: .touchUpInside)
        return pushButton
    }()
    
    let dummyPlayer = DummyPlayerViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        view.addSubview(embeedPlayerButton)
        embeedPlayerButton.translatesAutoresizingMaskIntoConstraints = false
        embeedPlayerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        embeedPlayerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(unEmbeedPlayerButton)
        unEmbeedPlayerButton.translatesAutoresizingMaskIntoConstraints = false
        unEmbeedPlayerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        unEmbeedPlayerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(pushButton)
        pushButton.translatesAutoresizingMaskIntoConstraints = false
        pushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pushButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true

        title = "RootViewController"
    }
    
    @objc
    func embeedPlayerButtonWasPressed() {
        constraint?.constant = 320
        UIView.animate(withDuration: 0.3) {
            UIApplication.shared.windows.first?.rootViewController?.view?.layoutIfNeeded()
//            self.view.superview?.layoutIfNeeded()
        }
//        navigationController?.embeed(dummyPlayer: dummyPlayer)
        unEmbeedPlayerButton.isHidden = false
        embeedPlayerButton.isHidden = true
    }
    
    @objc
    func unEmbeedPlayerButtonWasPressed() {
        constraint?.constant = 0
        UIView.animate(withDuration: 0.3) {
            UIApplication.shared.windows.first?.rootViewController?.view?.layoutIfNeeded()
        //            self.view.superview?.layoutIfNeeded()
    }
//        navigationController?.unembeedDummyPlayer()
        unEmbeedPlayerButton.isHidden = true
        embeedPlayerButton.isHidden = false
    }
    
    @objc
    func pushMeButtonWasPressed() {
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}
