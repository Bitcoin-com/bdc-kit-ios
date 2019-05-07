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
        shadowImage = navigationController?.navigationBar.shadowImage
        navigationController?.navigationBar.shadowImage = UIImage()
    }
}


extension BDCClearNavViewController: UIScrollViewDelegate {
    open func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if (scrollView.contentOffset.y > 0) {
            navigationController?.navigationBar.shadowImage = shadowImage
        } else {
            navigationController?.navigationBar.shadowImage = UIImage()
        }
    }
}
