//
//  BDCButtonType.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/14.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

public enum BDCButtonType {
    case type1
    case type2
    case type3
    case type4
    case type5
    case type6
    case type7
}

public extension BDCButtonType {
    
    var layer: CALayer {
        let layer : CAGradientLayer = CAGradientLayer()
        
        switch self {
        case .type1:
            layer.backgroundColor = BDCColor.whiteTwo.uiColor.cgColor
            layer.cornerRadius = 16
            layer.borderWidth = 0
        case .type2:
            layer.borderWidth = 1
            layer.borderColor = UIColor(displayP3Red: 43/255, green: 150/255, blue: 150/255, alpha: 1).cgColor
            layer.cornerRadius = 8
            layer.shadowColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.122).cgColor
            layer.shadowOpacity = 1
            layer.shadowOffset = CGSize(width: 0, height: 2)
            layer.shadowRadius = 4 / 2
            layer.shadowPath = nil
            
            layer.frame.origin = CGPoint(x: 0, y: 0)
            layer.locations = [0.0, 1.0]
            layer.startPoint = CGPoint(x: 0.5, y: 0.0)
            layer.endPoint = CGPoint(x: 0.5, y: 1.0)
            layer.colors = [UIColor(red: 21/255, green: 214/255, blue: 160/255, alpha: 1).cgColor, UIColor(red: 10/255, green: 193/255, blue: 142/255, alpha: 1).cgColor]
        case .type4:
            layer.backgroundColor = BDCColor.background2.uiColor.cgColor
            layer.cornerRadius = 3
            layer.borderWidth = 0
        case .type7:
            layer.backgroundColor = BDCColor.green.uiColor.cgColor
            layer.cornerRadius = 8
            layer.borderWidth = 0
        default: break
        }
        
        return layer
    }
    
    var font: UIFont {
        switch self {
        case .type1:
            return UIFont(name: "SFProDisplay-Bold", size: 13) ?? UIFont.systemFont(ofSize: 13, weight: UIFont.Weight(rawValue: 10))
        case .type2:
            return UIFont(name: "SFProDisplay-Bold", size: 16) ?? UIFont.boldSystemFont(ofSize: 16)
        case .type3:
            return UIFont(name: "SFProDisplay-Medium", size: 16) ?? UIFont.systemFont(ofSize: 16)
        case .type4:
            return UIFont(name: "SFProDisplay-Bold", size: 16) ?? UIFont.boldSystemFont(ofSize: 16)
        case .type5:
            return UIFont(name: "SFProDisplay-Bold", size: 16) ?? UIFont.boldSystemFont(ofSize: 16)
        case .type6:
            return UIFont(name: "SFProDisplay-Bold", size: 15) ?? UIFont.boldSystemFont(ofSize: 15)
        case .type7:
            return UIFont(name: "SFProDisplay-Bold", size: 17) ?? UIFont.boldSystemFont(ofSize: 17)
        }
    }
    
    var tintColor: UIColor {
        switch self {
        case .type1:
            return BDCColor.primary.uiColor
        case .type2, .type7:
            return BDCColor.white.uiColor
        case .type3, .type6:
            return BDCColor.black.uiColor
        case .type4:
            return BDCColor.primary.uiColor
        case .type5:
            return BDCColor.primary.uiColor
        }
    }
    
    var height: CGFloat {
        switch self {
        case .type1:
            return 32
        case .type2:
            return 56
        case .type3:
            return 22
        case .type4:
            return 48
        case .type5:
            return 56
        case .type6:
            return 20
        case .type7:
            return 56
        }
    }
}
