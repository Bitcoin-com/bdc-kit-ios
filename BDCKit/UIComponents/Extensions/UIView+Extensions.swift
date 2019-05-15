//
//  UIView+Extensions.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/14.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

public extension UIView {
    func fillSuperView(_ safely: Bool = false, withPadding padding: CGFloat = 0) {
        if translatesAutoresizingMaskIntoConstraints {
            translatesAutoresizingMaskIntoConstraints = false
        }
        
        guard let superView = superview else {
            return
        }
        
        if safely, #available(iOS 11.0, *) {
            topAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.topAnchor, constant: padding).isActive = true
            bottomAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.bottomAnchor, constant: -padding).isActive = true
        } else {
            topAnchor.constraint(equalTo: superView.topAnchor, constant: padding).isActive = true
            bottomAnchor.constraint(equalTo: superView.bottomAnchor, constant: -padding).isActive = true
        }
        
        leadingAnchor.constraint(equalTo: superView.leadingAnchor, constant: padding).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor, constant: -padding).isActive = true
    }
}
