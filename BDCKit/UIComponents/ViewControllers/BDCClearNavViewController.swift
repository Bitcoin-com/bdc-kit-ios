//
//  BDCClearNavViewController.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/16.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

open class BDCClearNavViewController: BDCViewController {
    
    var shadowImage: UIImage?
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.view.backgroundColor = .clear
        
        // Handles the shadow image
        navigationController?.navigationBar.shadowImage = UIImage()
    }
}


extension BDCClearNavViewController: UIScrollViewDelegate {
    open func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        
        if (offsetY > 0) {
            let shawdowOpacity = offsetY*0.02*0.3
            let shadowOffsetHeight = offsetY*0.02*3
            let shadowRadius = offsetY*0.02*2
            
            navigationController?.navigationBar.layer.masksToBounds = false
            navigationController?.navigationBar.layer.shadowColor = UIColor.black.cgColor
            navigationController?.navigationBar.layer.shadowOpacity = Float(min(0.3, shawdowOpacity))
            navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: min(3, shadowOffsetHeight))
            navigationController?.navigationBar.layer.shadowRadius = min(2, shadowRadius)
        } else {
            navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 0)
            navigationController?.navigationBar.layer.shadowOpacity = 0
            navigationController?.navigationBar.layer.shadowRadius = 0
        }
    }
}
