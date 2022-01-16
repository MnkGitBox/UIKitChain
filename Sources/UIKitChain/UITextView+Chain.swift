//
//  UITextView+Chain.swift
//
//  Created by Malith Nadeeshan on 4/8/20.
//  Copyright © 2020 Malith Nadeeshan. All rights reserved.
//

import UIKit

extension UIKitChain where Component: UITextView {
    
    @discardableResult
    public func textColor(_ color:UIColor) -> Self {
        component.textColor = color
        return self
    }
    
    @discardableResult
    public func scrolledEnable(_ isEnable:Bool) -> Self {
        component.isScrollEnabled = isEnable
        return self
    }
    
    @discardableResult
    public func font(_ font:UIFont) -> Self {
        component.font = font
        return self
    }
    
    @discardableResult
    public func text(_ text:String) -> Self {
        component.text = text
        return self
    }
    
    @discardableResult
    public func lineBreaking(_ mode: NSLineBreakMode) -> Self {
        component.textContainer.lineBreakMode = mode
        return self
    }
    
    @discardableResult
    public func keyBoardType(_ type: UIKeyboardType) -> Self {
        component.keyboardType = type
        return self
    }
    
    @discardableResult
    public func textAlignment(_ alignment: NSTextAlignment) -> Self {
        component.textAlignment = alignment
        return self
    }
    
    @discardableResult
    public func attribText(_ text: NSAttributedString) -> Self {
        component.attributedText = text
        return self
    }
    
    @discardableResult
    public func editable(_ isEditable: Bool) -> Self {
        component.isEditable = isEditable
        return self
    }
    
    @discardableResult
    public func selectable(_ selectable: Bool) -> Self {
        component.isSelectable = selectable
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
    public func delegate(_ target: UITextViewDelegate) -> Self {
        component.delegate = target
        return self
    }
}
