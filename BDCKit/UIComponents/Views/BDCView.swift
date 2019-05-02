//
//  BDCView.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/08.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

open class BDCView: UIView {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        backgroundColor = UIColor.clear
    }
    
    open func viewDidLoad() {
        fatalError("viewDidLoad has not been implemented")
    }
}
