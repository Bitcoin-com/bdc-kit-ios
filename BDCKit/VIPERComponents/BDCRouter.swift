//
//  BDCRouter.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/08.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

open class BDCRouter {
    
    public weak var viewController: UIViewController?
    
    public init(_ viewController: UIViewController) {
        self.viewController = viewController
    }
}
