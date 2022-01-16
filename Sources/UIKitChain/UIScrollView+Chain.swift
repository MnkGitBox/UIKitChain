//
//  UIScrollView+Chain.swift
//
//  Created by Malith Nadeeshan on 6/10/20.
//  Copyright © 2020 Malith Nadeeshan. All rights reserved.
//
import UIKit

extension UIKitChain where Component : UIScrollView {
    @discardableResult
    public func showScollIndicators(_ isShow:Bool) -> Self {
        component.showsVerticalScrollIndicator = isShow
        component.showsHorizontalScrollIndicator = isShow
        return self
    }
    
    @discardableResult
    public func setScrollIndicatorInset(_ inset: UIEdgeInsets) -> Self {
        component.scrollIndicatorInsets = inset
        return self
    }
    
    @discardableResult
    public func contentInsetAdjustmentBehavior(_ behavior: UIScrollView.ContentInsetAdjustmentBehavior) -> Self {
        component.contentInsetAdjustmentBehavior = behavior
        return self
    }
    
    @discardableResult
    public func contentInset(_ inset: UIEdgeInsets) -> Self {
        component.contentInset = .init(top: 0, left: 0, bottom: 20, right: 0)
        return self
    }
    
    @discardableResult
    public func indicatorStyle(_ style: UIScrollView.IndicatorStyle) -> Self {
        component.indicatorStyle = style
        return self
    }
    
    @discardableResult
    public func enableScrolling(_ isScrollEnable: Bool) -> Self {
        component.isScrollEnabled = isScrollEnable
        return self
    }
    
    @discardableResult
    public func delegate(_ delegate: UIScrollViewDelegate) -> Self {
        component.delegate = delegate
        return self
    }
    
    @discardableResult
    public func bounce(_ isEnable: Bool) -> Self {
        component.bounces = isEnable
        return self
    }
}
