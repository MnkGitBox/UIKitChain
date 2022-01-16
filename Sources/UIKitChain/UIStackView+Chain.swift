//
//  UIStackView+Chain.swift
//
//  Created by Malith Nadeeshan on 4/5/20.
//  Copyright © 2020 Malith Nadeeshan. All rights reserved.
//

import UIKit

extension UIKitChain where Component:UIStackView{
    public var vStack:Self{
        component.axis = .vertical
        return self
    }
    
    public var hStack:Self{
        component.axis = .horizontal
        return self
    }
    
    @discardableResult
    public func distribution(_ distribution:UIStackView.Distribution)->Self{
        component.distribution = distribution
        return self
    }
    
    @discardableResult
    public func spacing(_ space:CGFloat)->Self{
        component.spacing = space
        return self
    }
    
    @discardableResult
    public func alignment(_ alignment: UIStackView.Alignment ) -> Self {
        component.alignment = alignment
        return self
    }
    
    @discardableResult
    public func addArrangeSubViews(_ subViews: [UIView]) -> Self {
        subViews.forEach{
            component.addArrangedSubview($0)
        }
        return self
    }
    
    public var generalFillEqual: Self {
        spacing(4)
        distribution(.fillEqually)
        return self
    }
    
    @discardableResult
    public func layoutMargins(_ value: NSDirectionalEdgeInsets) -> Self {
        component.isLayoutMarginsRelativeArrangement = true
        component.directionalLayoutMargins = value
        return self
    }
}
