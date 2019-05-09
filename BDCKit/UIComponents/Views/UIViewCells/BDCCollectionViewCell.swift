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
        
        viewCell.fillSuperView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
