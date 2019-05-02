//
//  BDCModule.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/08.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

public protocol BDCModuleDelegate {
    var currentViewController: UIViewController? { get }
    func didPushPreview(_ viewControllerToCommit: UIViewController)
}

public protocol BDCModuleBuilder {
    func provide(_ moduleDelegate: BDCModuleDelegate) -> UIView
}

public protocol BDCBuilder {
    func provide() -> UIViewController
}
