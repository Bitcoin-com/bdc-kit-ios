//
//  I_T_ViewCell.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/05/02.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

open class I_T_ViewCell: BDCViewCell {
    
    public var iconImageView: UIImageView
    public var titleLabel: BDCLabel
    
    override init(frame: CGRect) {
        var constraints = [NSLayoutConstraint]()
        
        // Icon
        //
        iconImageView = UIImageView()
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.layer.cornerRadius = 56/2
        iconImageView.clipsToBounds = true
        
        // Title
        //
        titleLabel = BDCLabel.build(.subtitle3)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 2
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Super init
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(iconImageView)
        addSubview(titleLabel)
        
        let views = ["icon": iconImageView, "label": titleLabel]
        
        // Define the contraints
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[icon(56)]-8-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[label]-8-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|[icon(56)]-8-[label(24)]", metrics: nil, views: views)
        
        // Activate the contraints
        NSLayoutConstraint.activate(constraints)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
