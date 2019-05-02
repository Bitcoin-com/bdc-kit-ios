//
//  I_T_CollectionViewCell.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/09.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

open class I_T_CollectionViewCell: UICollectionViewCell {
    
    public var viewCell: I_T_TS_ViewCell?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let viewCell = I_T_TS_ViewCell(frame: frame)
        viewCell.translatesAutoresizingMaskIntoConstraints = false
        
        self.viewCell = viewCell
        
        addSubview(viewCell)
        
        viewCell.fillSuperView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}