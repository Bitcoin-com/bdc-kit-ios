//
//  BDCLabel.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/11.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

public class BDCLabel: UILabel {
    
    public static func build(_ type: BDCLabelType, frame: CGRect = CGRect.zero) -> BDCLabel {
        let label = BDCLabel(frame: frame)
        label.setup(type)
        return label
    }
    
    public func setup(_ type: BDCLabelType) {
        textColor = type.color
        font = type.font
    }
}
