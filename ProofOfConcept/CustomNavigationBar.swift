//
//  CustomNavigationBar.swift
//  ProofOfConcept
//
//  Created by David Cordero on 16.01.19.
//  Copyright © 2019 David Cordero. All rights reserved.
//

import UIKit


class CustomNavigationBar: UINavigationBar {
    
    let dummyPlayerContainterView: UIView = {
        return UIView()
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(dummyPlayerContainterView)
        dummyPlayerContainterView.frame = frame
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        if dummyPlayerContainterView.subviews.isEmpty {
            return super.sizeThatFits(size)
        }
        else {
            return CGSize(width: UIScreen.main.bounds.width, height: 450)
        }
    }
}

extension UINavigationController {
    
    func embeed(dummyPlayer: DummyPlayerViewController) {
        guard let navigationBar = navigationBar as? CustomNavigationBar else { return }
        dummyPlayer.view.frame = CGRect(x: 0, y: navigationBar.bounds.height, width: view.bounds.width, height: 200)
        
        navigationBar.dummyPlayerContainterView.addSubview(dummyPlayer.view)
        addChild(dummyPlayer)
        dummyPlayer.didMove(toParent: self)
    }
    
    func unembeedDummyPlayer() {
        guard let navigationBar = navigationBar as? CustomNavigationBar else { return }
        for subview in navigationBar.dummyPlayerContainterView.subviews {
            subview.removeFromSuperview()
        }
    }
}
