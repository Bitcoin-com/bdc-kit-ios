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
    var scrollView: UIScrollView?
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.view.backgroundColor = .clear
        
        // Handles the shadow image
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    open override func viewDidAppear(_ animated: Bool) {
        if let scrollView = self.scrollView {
            scrollViewDidScroll(scrollView)
        }
    }
}


extension BDCClearNavViewController: UIScrollViewDelegate {
    
    public func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        self.scrollView = scrollView
    }
    
    open func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        
        var shadowOpacity: Float = 0
        var shadowOffsetHeight = 0
        var shadowRadius: CGFloat = 0
        
        if (offsetY > 0) {
            shadowOpacity = Float(min(0.3, offsetY*0.02*0.3))
            shadowOffsetHeight = min(3, Int(offsetY*0.02*3))
            shadowRadius = min(2, offsetY*0.02*2)
        }
        
        setNavShadow(shadowOpacity, offset: .init(width: 0, height: shadowOffsetHeight), radius: shadowRadius)
    }
}
