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
    case error
    case warning
    case background
    case background2
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
            return UIColor(red: 146/255, green: 192/255, blue: 113/255, alpha: 1)
        case .paleLilac:
            return UIColor(red: 236/255, green: 236/255, blue: 238/255, alpha: 1)
        case .primary:
            return UIColor(red: 10/255, green: 193/255, blue: 142/255, alpha: 1)
        case .primaryVariant:
            return UIColor(red: 43/255, green: 191/255, blue: 150/255, alpha: 1)
        case .secondary:
            return UIColor(red: 41/255, green: 152/255, blue: 242/255, alpha: 1)
        case .secondaryVariant:
            return UIColor(red: 29/255, green: 42/255, blue: 56/255, alpha: 1)
        case .error:
            return UIColor(red: 229/255, green: 43/255, blue: 32/255, alpha: 1)
        case .warning:
            return UIColor(red: 255/255, green: 191/255, blue: 47/255, alpha: 1)
        case .background:
            return UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        case .background2:
            return UIColor(red: 241/255, green: 243/255, blue: 251/255, alpha: 1)
        case .surface:
            return UIColor(red: 251/255, green: 252/255, blue: 255/255, alpha: 1)
        }
    }
}
