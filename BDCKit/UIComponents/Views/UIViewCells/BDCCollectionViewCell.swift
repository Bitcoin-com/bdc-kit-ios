//
//  BDCCollectionViewCell.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/05/09.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

open class BDCCollectionViewCell<T: BDCViewCell>: UICollectionViewCell {
    
    public var viewCell: T?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let viewCell = T()
        viewCell.translatesAutoresizingMaskIntoConstraints = false
        viewCell.layer.cornerRadius = 7
        
        self.viewCell = viewCell
        
        addSubview(viewCell)
        
        if let superview = viewCell.superview {
            viewCell.leadingAnchor.constraint(equalTo: superview.leadingAnchor).isActive = true
            viewCell.trailingAnchor.constraint(equalTo: superview.trailingAnchor).isActive = true
            viewCell.topAnchor.constraint(equalTo: superview.topAnchor, constant: 4).isActive = true
            viewCell.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -4).isActive = true
        }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
