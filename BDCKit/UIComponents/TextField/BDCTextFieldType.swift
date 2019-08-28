//
//  BDCTextFieldType.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/23.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

public enum BDCTextFieldType {
    case type1
    case type2
    case type3
}

extension BDCTextFieldType {
    var font: UIFont {
        switch self {
        case .type1:
            return UIFont(name: "SFProDisplay-Medium", size: 12) ?? UIFont.systemFont(ofSize: 12)
        case .type2:
            return UIFont(name: "SFProDisplay-Medium", size: 16) ?? UIFont.systemFont(ofSize: 16)
        case .type3:
            return UIFont(name: "SFProDisplay-Medium", size: 40) ?? UIFont.systemFont(ofSize: 40)
        }
    }
    
    var color: UIColor {
        switch self {
        case .type1:
            return BDCColor.warmGrey.uiColor
        case .type2, .type3:
            return BDCColor.black.uiColor
        }
    }
    var height: CGFloat? {
        switch self {
        case .type3:
            return 50
        default:
            return 32
        }
    }
}


