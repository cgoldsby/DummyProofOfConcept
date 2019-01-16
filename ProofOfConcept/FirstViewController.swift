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
    
    private let pushButton: UIButton = {
        let pushButton = UIButton()
        pushButton.setTitle("Push me !", for: .normal)
        pushButton.setTitleColor(.brown, for: .normal)
        pushButton.addTarget(self, action: #selector(pushMeButtonWasPressed), for: .touchUpInside)
        return pushButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        view.addSubview(embeedPlayerButton)
        embeedPlayerButton.translatesAutoresizingMaskIntoConstraints = false
        embeedPlayerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        embeedPlayerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(pushButton)
        pushButton.translatesAutoresizingMaskIntoConstraints = false
        pushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pushButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
    }
    
    @objc
    func embeedPlayerButtonWasPressed() {
        let dummyPlayer = DummyPlayerViewController()
        navigationController?.embeed(dummyPlayer: dummyPlayer)
    }
    
    @objc
    func pushMeButtonWasPressed() {
        let secondViewController = SecondViewController()
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}
