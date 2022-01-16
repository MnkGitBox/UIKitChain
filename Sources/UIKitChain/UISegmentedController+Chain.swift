//
//  UISegmentedController+Chain.swift
//
//  Created by Malith Nadeeshan on 4/12/20.
//  Copyright © 2020 Malith Nadeeshan. All rights reserved.
//

import UIKit

extension UIKitChain where Component : UISegmentedControl {
    
    @discardableResult
    public func select(_ index:Int ) -> Self {
        component.selectedSegmentIndex = index
        return self
    }
}
