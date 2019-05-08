//
//  UIView+Extensions.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/14.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

public extension UIView {
    func fillSuperView(_ safely: Bool = false) {
        if translatesAutoresizingMaskIntoConstraints {
            translatesAutoresizingMaskIntoConstraints = false
        }
        
        guard let superView = superview else {
            return
        }
        
        if safely, #available(iOS 11.0, *) {
            topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
            bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
        } else {
            topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
            bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
        }
        
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
    }
}
