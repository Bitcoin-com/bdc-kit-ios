//
//  BDCTableView.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/11.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

open class BDCTableView: UITableView {
    
    override public init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        
        setup()
    }
    
    override open func awakeFromNib() {
        super.awakeFromNib()
        
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
    }
    
    public func setup() {
        // Default raw height
        rowHeight = 64
        backgroundColor = .clear
        layer.masksToBounds = false
        separatorStyle = .none
    }
}
