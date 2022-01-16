//
//  UITextField+Chain.swift
//
//  Created by Malith Nadeeshan on 4/13/20.
//  Copyright © 2020 Malith Nadeeshan. All rights reserved.
//

import UIKit

extension UIKitChain where Component: UITextField {
    @discardableResult
    public func font(_ font:UIFont) -> Self {
        component.font = font
        return self
    }
    
    @discardableResult
    public func placeHolder(_ placeHolder:String) -> Self {
        component.placeholder = placeHolder
        return self
    }
    
    @discardableResult
    public func textColor(_ color:UIColor) -> Self {
        component.textColor = color
        return self
    }
    
    @discardableResult
    public func text(_ text: String?) -> Self {
        component.text = text
        return self
    }
    
    @discardableResult
    public func delegate(_ delegate: UITextFieldDelegate) -> Self {
        component.delegate = delegate
        return self
    }
    
    @discardableResult
    public func attributedPlaceholder(_ placeHolder:String,_ attributes:[NSAttributedString.Key:Any]) -> Self {
        component.attributedPlaceholder = NSAttributedString.init(string: placeHolder, attributes: attributes)
        return self
    }
    
    @discardableResult
    public func keyBoardType(_ type: UIKeyboardType) -> Self {
        component.keyboardType = type
        return self
    }
    
    @discardableResult
    public func textAligment(_ aligment: NSTextAlignment) -> Self {
        component.textAlignment = aligment
        return self
    }
    
    @discardableResult
    public func returnKeyType(_ type: UIReturnKeyType) -> Self {
        component.returnKeyType = type
        return self
    }
    
    @discardableResult
    public func autocorrectionType(_ type: UITextAutocorrectionType) -> Self {
        component.autocorrectionType = type
        return self
    }
    
    @discardableResult
    public func textContentType(_ type: UITextContentType) -> Self {
        component.textContentType = type
        return self
    }
    
    
    @discardableResult
    public func minFontSize(_ size: CGFloat) -> Self {
        component.minimumFontSize = size
        component.adjustsFontSizeToFitWidth = true
        return self
    }
}
