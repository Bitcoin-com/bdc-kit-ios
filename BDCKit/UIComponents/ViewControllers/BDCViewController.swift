//
//  BDCViewController.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/08.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

open class BDCViewController: UIViewController {
    
    override open func viewDidLoad() {
        view.backgroundColor = BDCColor.surface.uiColor
        
        setNavShadow(0, offset: .init(width: 0, height: 0), radius: 0)
    }
    
    func setNavShadow(_ opacity: Float, offset: CGSize, radius: CGFloat) {
        navigationController?.navigationBar.layer.shadowOpacity = opacity
        navigationController?.navigationBar.layer.shadowOffset = offset
        navigationController?.navigationBar.layer.shadowRadius = radius
    }
}
