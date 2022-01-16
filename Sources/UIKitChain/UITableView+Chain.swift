//
//  UITableView+Chain.swift
//
//  Created by Malith Nadeeshan on 4/21/20.
//  Copyright © 2020 Malith Nadeeshan. All rights reserved.
//

import UIKit

extension UIKitChain where Component : UITableView{
    
    @discardableResult
    public func showScollIndicators(_ isShow:Bool) -> Self {
        component.showsVerticalScrollIndicator = isShow
        component.showsHorizontalScrollIndicator = isShow
        return self
    }
    
    @discardableResult
    public func indicatorStyle(_ style: UIScrollView.IndicatorStyle) -> Self {
        component.indicatorStyle = style
        return self
    }
    
    @discardableResult
    public func enableScroll(_ isEnabled:Bool) -> Self {
        component.isScrollEnabled = isEnabled
        return self
    }
    
    @discardableResult
    public func bounceVertical(_ isAlwaysBounceVertically:Bool) -> Self {
        component.alwaysBounceVertical = isAlwaysBounceVertically
        return self
    }
    
    @discardableResult
    public func register(_ cellClass: AnyClass?, with identifier: String) -> Self {
        component.register(cellClass, forCellReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func register(_ nib: UINib?, with identifier: String) -> Self {
        component.register(nib, forCellReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func registerHeader(_ headerClass:AnyClass?,_ identifier:String) -> Self {
        component.register(headerClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func delegate(_ delegate: UITableViewDelegate?) -> Self {
        component.delegate = delegate
        return self
    }
    
    @discardableResult
    public func dataSource(_ dataSource: UITableViewDataSource?) -> Self {
        component.dataSource = dataSource
        return self
    }
    
    @available(iOS 11.1, *)
    @discardableResult
    public func contentInset(_ inset:UIEdgeInsets) -> Self {
        component.contentInset = inset
        component.verticalScrollIndicatorInsets = UIEdgeInsets.init(top: inset.top, left: 0, bottom: inset.bottom, right: 0)
        return self
    }
    
    @discardableResult
    public func seperatorStyle(_ style: UITableViewCell.SeparatorStyle) -> Self {
        component.separatorStyle = style
        return self
    }
    
    @discardableResult
    public func seperatorInset(_ inset: UIEdgeInsets) -> Self {
        component.separatorInset = inset
        return self
    }
    
    public var setEmptyFooter: Self {
        component.tableFooterView = UIView()
        return self
    }
}
