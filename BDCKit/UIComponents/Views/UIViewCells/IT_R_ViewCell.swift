//
//  IT_R_ViewCell.swift
//  BitcoinComWallet
//
//  Created by Jennifer Eve Curativo on 18/07/2019.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import BDCKit

open class IT_R_ViewCell: BDCViewCell {
    
    public var iconImageView: UIImageView
    public var titleLabel: BDCLabel
    public var radioButton: UIButton
    fileprivate var separatorLine: UIView
    
    override init(frame: CGRect) {
        var constraints = [NSLayoutConstraint]()
        
        // Icon
        //
        iconImageView = UIImageView()
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.layer.cornerRadius = 3
        iconImageView.clipsToBounds = true
        
        // Title
        //
        titleLabel = BDCLabel.build(.title)
        titleLabel.textAlignment = .left
        titleLabel.numberOfLines = 2
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // RadioButton
        //
        radioButton = UIButton(type: .custom)
        radioButton.translatesAutoresizingMaskIntoConstraints = false
        radioButton.setImage(UIImage(named: "unselected_radio_button"), for: .normal)
        radioButton.isUserInteractionEnabled = false

        // Separator Line
        //
        separatorLine = UIView()
        separatorLine.backgroundColor = BDCColor.paleLilac.uiColor
        separatorLine.translatesAutoresizingMaskIntoConstraints = false
        
        // Super init
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(iconImageView)
        addSubview(titleLabel)
        addSubview(radioButton)
        addSubview(separatorLine)
        
        let views = ["icon": iconImageView, "label": titleLabel, "radioButton": radioButton,  "line": separatorLine]
        
        // Define the contraints
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[icon(28)]-16-[label]-8-[radioButton(30)]-16-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-(>=20)-[icon(20)]-(>=20)-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[label]-8-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:|-15-[radioButton]-15-|", metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[line(1)]|", metrics: nil, views: views)
        
        
        // Activate the contraints
        NSLayoutConstraint.activate(constraints)
        
        self.backgroundColor = BDCColor.white.uiColor
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public
    
    public func isSelected() {
        radioButton.setImage(UIImage(named: "selected_radio_button"), for: .normal)
    }
    
    public func isDeselected() {
        radioButton.setImage(UIImage(named: "unselected_radio_button"), for: .normal)
    }
}
