//
//  Button.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/11.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

public class BDCButton: UIButton {
    
    var type: BDCButtonType?
    var isSetup = false
    
    public static func build(_ type: BDCButtonType) -> BDCButton {
        let button = BDCButton.init(type: .system)
        button.setup(type)
        return button
    }
    
    public func setup(_ type: BDCButtonType) {
        self.type = type
        titleLabel?.font = type.font
        titleLabel?.textColor = type.tintColor
        tintColor = type.tintColor
        
        contentEdgeInsets = .init(top: 16, left: 16, bottom: 16, right: 16)
        
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: type.height).isActive = true
    }
    
    override public func setImage(_ image: UIImage?, for state: UIControl.State) {
        super.setImage(image, for: state)
        
        guard let type = self.type else {
            return
        }
        
        // TODO: Move this to ButtonType
        switch type {
        case .type4:
            contentEdgeInsets = .init(top: 8, left: 16, bottom: 8, right: 16)
            titleEdgeInsets = .init(top: 0, left: 8, bottom: 0, right: 0)
            imageEdgeInsets = .init(top: 0, left: 0, bottom: 0, right: 8)
        case .type1:
            contentEdgeInsets = .init(top: 0, left: 8, bottom: 0, right: 8)
            imageEdgeInsets = .init(top: 0, left: 8, bottom: 0, right: 8)
        default:
            contentEdgeInsets = .init(top: 0, left: 0, bottom: 0, right: 0)
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        guard let type = self.type
            , !isSetup else {
                return
        }
        
        let layer = type.layer
        layer.frame.size = frame.size
        
        self.layer.insertSublayer(layer, at: 0)
        
        isSetup = true
    }
}
