//
//  BDCCollectionView.swift
//  BDCKit
//
//  Created by Jean-Baptiste Dominguez on 2019/04/14.
//  Copyright © 2019 Bitcoin.com. All rights reserved.
//

import UIKit

open class BDCCollectionView: UICollectionView {
    
    var _padding: CGFloat = 16
    public var padding: CGFloat { get { return _padding } }
    
    override public init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    public func setup() {
        backgroundColor = .clear
        
        setupPadding()
    }
    
    public func setupPadding(_ padding: CGFloat? = nil) {
        if let padding = padding {
            self._padding = padding
        }
        
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionInset = .init(top: self.padding, left: self.padding, bottom: self.padding, right: self.padding)
        }
    }
}
