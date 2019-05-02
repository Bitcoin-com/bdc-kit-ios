//
//  I_TS_TableViewCell.swift
//  Merchant
//
//  Created by Jean-Baptiste Dominguez on 2019/04/22.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

open class I_TS_TableViewCell: BDCTableViewCell {
    
    public var viewCell: I_TS_ViewCell?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let viewCell = I_TS_ViewCell(frame: frame)
        viewCell.translatesAutoresizingMaskIntoConstraints = false
        
        self.viewCell = viewCell
        
        addSubview(viewCell)
        
        viewCell.fillSuperView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func setSelected(_ selected: Bool, animated: Bool) {
    }
    
}
