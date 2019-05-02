//
//  BDCTextField.swift
//  Merchant
//
//  Created by Jean-Baptiste Dominguez on 2019/04/23.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

public class BDCTextField: UITextField {
    
    public static func build(_ type: BDCTextFieldType, frame: CGRect = CGRect.zero) -> BDCTextField {
        let textField = BDCTextField(frame: frame)
        textField.setup(type)
        return textField
    }
    
    public func setup(_ type: BDCTextFieldType) {
        textColor = type.color
        font = type.font
    }
}
