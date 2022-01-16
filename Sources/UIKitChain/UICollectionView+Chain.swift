//
//  UICollectionView+Chain.swift
//
//  Created by Malith Nadeeshan on 4/5/20.
//  Copyright © 2020 Malith Nadeeshan. All rights reserved.
//

import UIKit

typealias RegisterType = (type:AnyClass,id:String)

extension UIKitChain where Component:UICollectionView{
    
    @discardableResult
    public func showScollIndicators(_ isShow:Bool) -> Self {
        component.showsVerticalScrollIndicator = isShow
        component.showsHorizontalScrollIndicator = isShow
        return self
    }
    
    @discardableResult
    public func enableScroll(_ isEnabled:Bool) -> Self {
        component.isScrollEnabled = isEnabled
        return self
    }
    
    @discardableResult
    public func allowSelection(_ isAllowSelection: Bool) -> Self {
        component.allowsSelection = isAllowSelection
        return self
    }
    
    @discardableResult
    public func bounceVertical(_ isAlwaysBounceVertically:Bool) -> Self {
        component.alwaysBounceVertical = isAlwaysBounceVertically
        return self
    }
    
    @discardableResult
    public func register(_ cellClass:AnyClass?,with identifier:String) -> Self {
        component.register(cellClass, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func register(_ nib:UINib?,with identifier: String) -> Self {
        component.register(nib, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func registerHeader(_ headerClass:AnyClass?,_ identifier:String) -> Self {
        component.register(headerClass,
                           forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                           withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func delegate(_ delegate: UICollectionViewDelegate?) -> Self {
        component.delegate = delegate
        return self
    }
    
    @discardableResult
    public func dataSource(_ dataSource: UICollectionViewDataSource?) -> Self {
        component.dataSource = dataSource
        return self
    }
    
    @discardableResult
    public func contentInset(_ inset:UIEdgeInsets) -> Self {
        component.contentInset = inset
        return self
    }
    
    @discardableResult
    public func isPaging(_ isPagingEnabled: Bool) -> Self {
        component.isPagingEnabled = isPagingEnabled
        return self
    }
}


