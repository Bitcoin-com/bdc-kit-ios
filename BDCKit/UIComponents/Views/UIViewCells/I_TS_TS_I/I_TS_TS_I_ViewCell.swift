//
//  I_TS_TS_I_ViewCell.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/05/09.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

open class I_TS_TS_I_ViewCell: BDCViewCell {
    
    public var icon1ImageView: UIImageView
    public var icon2ImageView: UIImageView
    public var title1Label: BDCLabel
    public var title2Label: BDCLabel
    public var subtitle1Label: BDCLabel
    public var subtitle2Label: BDCLabel
    
    override init(frame: CGRect) {
        var constraints = [NSLayoutConstraint]()
        
        // Icon 1
        //
        icon1ImageView = UIImageView(frame: CGRect(origin: CGPoint.zero, size: CGSize.zero))
        icon1ImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // View for the Icon 1
        //
        let icon1View = UIView(frame: CGRect.zero)
        icon1View.translatesAutoresizingMaskIntoConstraints = false
        icon1View.addSubview(icon1ImageView)
        
        // Setup constraints for Icon 1
        icon1ImageView.centerYAnchor.constraint(equalTo: icon1View.centerYAnchor).isActive = true
        
        // Icon 2
        //
        icon2ImageView = UIImageView(frame: CGRect(origin: CGPoint.zero, size: CGSize.zero))
        icon2ImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // View for the Icon 2
        //
        let icon2View = UIView(frame: CGRect.zero)
        icon2View.translatesAutoresizingMaskIntoConstraints = false
        icon2View.addSubview(icon2ImageView)
        
        // Setup constraints for Icon 2
        icon2ImageView.centerYAnchor.constraint(equalTo: icon2View.centerYAnchor).isActive = true
        
        // Title 1
        //
        title1Label = BDCLabel.build(.title)
        
        // Subtitle 1
        //
        subtitle1Label = BDCLabel.build(.subtitle)
        
        let stackViewLeft = UIStackView(arrangedSubviews: [title1Label, subtitle1Label])
        stackViewLeft.alignment = .trailing
        stackViewLeft.spacing = 4
        stackViewLeft.axis = .vertical
        stackViewLeft.translatesAutoresizingMaskIntoConstraints = false
        
        // Title 2
        //
        title2Label = BDCLabel.build(.title)
        
        // Subtitle 2
        //
        subtitle2Label = BDCLabel.build(.subtitle)
        
        let stackViewRight = UIStackView(arrangedSubviews: [title2Label, subtitle2Label])
        stackViewRight.alignment = .trailing
        stackViewRight.spacing = 4
        stackViewRight.axis = .vertical
        stackViewRight.translatesAutoresizingMaskIntoConstraints = false
        
        // Super init
        super.init(frame: frame)
        
        backgroundColor = BDCColor.white.uiColor
        layer.borderWidth = 0
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(icon1View)
        addSubview(icon2View)
        
        addSubview(stackViewLeft)
        stackViewLeft.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        addSubview(stackViewRight)
        stackViewRight.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true

        let views = ["icon1": icon1ImageView, "icon2": icon2ImageView, "col1": icon1View, "col2": stackViewLeft, "col3": stackViewRight, "col4": icon2View]
        
        // Define the contraints
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|[icon1(24)]|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[icon1(24)]", metrics: nil, views: views)
        
        // Define the contraints
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|[icon2(24)]|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[icon2(24)]", metrics: nil, views: views)
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[col1]-16-[col2]-[col3]-16-[col4]-16-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-[col1]-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-[col4]-|", metrics: nil, views: views)
        
        // Activate the contraints
        NSLayoutConstraint.activate(constraints)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
