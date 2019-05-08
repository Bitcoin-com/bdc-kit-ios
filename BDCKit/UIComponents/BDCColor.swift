//
//  BDCColor.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/11.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

public enum BDCColor {
    case warmGrey
    case white
    case whiteTwo
    case clearBlue
    case black
    case green
    case paleLilac
    case primary
    case primaryVariant
    case secondary
    case secondaryVariant
    case background
    case surface
}

public extension BDCColor {
    var uiColor: UIColor {
        switch self {
        case .warmGrey:
            return UIColor(displayP3Red: 125/255, green: 125/255, blue: 125/255, alpha: 1)
        case .white:
            return UIColor(displayP3Red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        case .whiteTwo:
            return UIColor(displayP3Red: 246/255, green: 246/255, blue: 246/255, alpha: 1)
        case .clearBlue:
            return UIColor(displayP3Red: 41/255, green: 152/255, blue: 242/255, alpha: 1)
        case .black:
            return UIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 1)
        case .green:
            return UIColor(red: 146/256, green: 192/256, blue: 113/256, alpha: 1)
        case .paleLilac:
            return UIColor(red: 236/256, green: 236/256, blue: 238/256, alpha: 1)
        case .primary:
            return UIColor(red: 10/256, green: 193/256, blue: 142/256, alpha: 1)
        case .primaryVariant:
            return UIColor(red: 43/256, green: 191/256, blue: 150/256, alpha: 1)
        case .secondary:
            return UIColor(red: 41/256, green: 152/256, blue: 242/256, alpha: 1)
        case .secondaryVariant:
            return UIColor(red: 29/256, green: 42/256, blue: 56/256, alpha: 1)
        case .background:
            return UIColor(red: 255/256, green: 255/256, blue: 255/256, alpha: 1)
        case .surface:
            return UIColor(red: 251/256, green: 252/256, blue: 255/256, alpha: 1)
        }
    }
}
