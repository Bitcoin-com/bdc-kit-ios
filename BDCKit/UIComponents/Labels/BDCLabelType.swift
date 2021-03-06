//
//  BDCLabelType.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/14.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

public enum BDCLabelType {
    case header
    case header2
    case title
    case body
    case body2
    case subtitle
    case subtitle2
    case subtitle3
    case regular
}

extension BDCLabelType {
    var font: UIFont {
        switch self {
        case .header:
            return UIFont(name: "SFProDisplay-Bold", size: 32) ?? UIFont.boldSystemFont(ofSize: 32)
        case .header2:
            return UIFont(name: "SFProDisplay-Bold", size: 20) ?? UIFont.boldSystemFont(ofSize: 20)
        case .title:
            return UIFont(name: "SFProDisplay-Bold", size: 16) ?? UIFont.boldSystemFont(ofSize: 16)
        case .body:
            return UIFont(name: "SFProDisplay-Medium", size: 16) ?? UIFont.systemFont(ofSize: 16)
        case .body2:
            return UIFont(name: "SFProDisplay-Medium", size: 15) ?? UIFont.systemFont(ofSize: 15)
        case .subtitle:
            return UIFont(name: "SFProDisplay-Medium", size: 12) ?? UIFont.systemFont(ofSize: 12)
        case .subtitle2:
            return UIFont(name: "SFProDisplay-Semibold", size: 11) ?? UIFont.boldSystemFont(ofSize: 11)
        case .subtitle3:
            return UIFont(name: "SFProDisplay-Semibold", size: 10) ?? UIFont.boldSystemFont(ofSize: 10)
        case .regular:
            return UIFont(name: "SFProDisplay-Regular", size: 12) ?? UIFont.systemFont(ofSize: 12)
        }
    }
    
    var color: UIColor {
        switch self {
        case .header, .header2, .title, .body, .subtitle3:
            return BDCColor.black.uiColor
        case .subtitle, .subtitle2, .regular:
            return BDCColor.warmGrey.uiColor
        case .body2:
            return BDCColor.warmGreyTwo.uiColor
        }
    }
}

