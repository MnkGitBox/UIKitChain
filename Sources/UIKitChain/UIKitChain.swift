//
//  UIKitChain.swift
//  iDak
//
//  Created by Malith Nadeeshan on 4/4/20.
//  Copyright © 2020 Malith Nadeeshan. All rights reserved.
//

import Foundation

public struct UIKitChain<Component>{
    public let component:Component
    
    public init(_ component:Component) {
        self.component = component
    }
}

//MARK:- Chain Compatable Protocol
public protocol UIKitChainCompatable {
    
    associatedtype ComponentType
    
    var chain:UIKitChain<ComponentType> { get }
}

extension UIKitChainCompatable {
    
    public var chain:UIKitChain<Self> {
        get{
            return UIKitChain(self)
        }
    }
    
}


//MARK:-Add Chain Compatable to All NSObject SubClass Component
 extension NSObject: UIKitChainCompatable{}



