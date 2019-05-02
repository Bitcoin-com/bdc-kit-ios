//
//  BaseTableViewCell.swift
//  Merchant
//
//  Created by Jean-Baptiste Dominguez on 2019/04/11.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

open class BDCTableViewCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectedBackgroundView = UIView(frame: CGRect.zero)
        selectedBackgroundView?.backgroundColor = .clear
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func setSelected(_ selected: Bool, animated: Bool) {}
    
}
