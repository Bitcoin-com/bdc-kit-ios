//
//  T_SI_ViewCell.swift
//  BitcoinComWallet
//
//  Created by Jennifer Eve Curativo on 18/07/2019.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import BDCKit

open class T_SI_ViewCell: BDCViewCell {
    
    public var titleLabel: BDCLabel
    public var subtitleLabel: BDCLabel
    public var iconImageView: UIImageView
    fileprivate var separatorLine: UIView

    override init(frame: CGRect) {
        var constraints = [NSLayoutConstraint]()
        
        // Title
        //
        titleLabel = BDCLabel.build(.title)
        titleLabel.textAlignment = .left
        titleLabel.numberOfLines = 2
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Subtitle
        //
        subtitleLabel = BDCLabel.build(.body)
        subtitleLabel.textColor = BDCColor.warmGrey.uiColor
        subtitleLabel.textAlignment = .right
        subtitleLabel.numberOfLines = 2
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Icon
        //
        iconImageView = UIImageView()
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.layer.cornerRadius = 3
        iconImageView.clipsToBounds = true
        
        // Separator Line
        //
        separatorLine = UIView()
        separatorLine.backgroundColor = BDCColor.paleLilac.uiColor
        separatorLine.translatesAutoresizingMaskIntoConstraints = false

        // Super init
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(iconImageView)
        addSubview(separatorLine)

        let views = ["label": titleLabel, "subtitle": subtitleLabel, "icon": iconImageView, "line": separatorLine]
        
        // Define the contraints
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[label]-8-[subtitle]-16-[icon(28)]-36-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[line]-16-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-(>=20)-[icon(20)]-(>=20)-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[label]-8-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[subtitle]-8-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[line(1)]|", metrics: nil, views: views)

        
        // Activate the contraints
        NSLayoutConstraint.activate(constraints)
        
        self.backgroundColor = BDCColor.white.uiColor
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
