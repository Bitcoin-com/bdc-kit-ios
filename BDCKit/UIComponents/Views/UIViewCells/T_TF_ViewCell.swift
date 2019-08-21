//
//  T_TF_ViewCell.swift
//  BitcoinComWallet
//
//  Created by Jennifer Eve Curativo on 21/08/2019.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

open class T_TF_ViewCell: BDCViewCell {
    
    public var titleLabel: BDCLabel
    public var textField: UITextField
    fileprivate var separatorLine: UIView
    
    override init(frame: CGRect) {
        var constraints = [NSLayoutConstraint]()
        
        // Title
        //
        titleLabel = BDCLabel.build(.subtitle3)
        titleLabel.textAlignment = .left
        titleLabel.numberOfLines = 2
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // TextField
        //
        textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        
        // Separator Line
        //
        separatorLine = UIView()
        separatorLine.backgroundColor = BDCColor.paleLilac.uiColor
        separatorLine.translatesAutoresizingMaskIntoConstraints = false
        
        // Super init
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(titleLabel)
        addSubview(textField)
        addSubview(separatorLine)
        
        let views = ["label": titleLabel, "textField": textField, "line": separatorLine]
        
        // Define the contraints
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[label]-16-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[textField]-16-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[line]-16-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[label(12)]-[textField(30)]", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[line(1)]|", metrics: nil, views: views)
        
        
        // Activate the contraints
        NSLayoutConstraint.activate(constraints)
        
        self.backgroundColor = BDCColor.white.uiColor
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
