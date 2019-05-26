//
//  BaseTableViewCell.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/11.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

open class BDCTableViewCell<T: BDCViewCell>: UITableViewCell {
    
    public var viewCell: T?
    
    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectedBackgroundView = UIView()
        selectedBackgroundView?.backgroundColor = .clear
        backgroundColor = .clear
        
        let viewCell = T()
        viewCell.translatesAutoresizingMaskIntoConstraints = false
        viewCell.backgroundColor = .clear
        
        self.viewCell = viewCell
        
        addSubview(viewCell)
        
        viewCell.fillSuperView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func setSelected(_ selected: Bool, animated: Bool) {}
}
