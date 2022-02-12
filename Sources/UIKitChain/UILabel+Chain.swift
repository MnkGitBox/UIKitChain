//
//  UILabel+Chain.swift
//  
//
//  Created by Malith Kamburapola on 2022-02-12.
//

import UIKit

extension UIKitChain where Component : UILabel {
    
    @discardableResult
    public func text(_ text:String)->Self{
        component.text = text
        return self
    }
    
    @discardableResult
    public func atribText(_ text: NSAttributedString?) -> Self {
        component.attributedText = text
        return self
    }
    
    @discardableResult
    public func font(_ font:UIFont)->Self{
        component.font = font
        return self
    }
    
    @discardableResult
    public func lineBreakingMode(_ mode: NSLineBreakMode) -> Self {
        component.lineBreakMode = mode
        return self
    }

    
    @discardableResult
    public func textColor(_ color:UIColor)->Self{
        component.textColor = color
        return self
    }
    
    @discardableResult
    public func textAlignment(_ alignment:NSTextAlignment)->Self{
        component.textAlignment = alignment
        return self
    }
    
    @discardableResult
    public func numberOfLines(_ lines:Int)->Self{
        component.numberOfLines = lines
        return self
    }
    
    @discardableResult
    public func minScale(_ factor: CGFloat) -> Self {
        component.minimumScaleFactor = factor
        component.sizeToFit()
        component.adjustsFontSizeToFitWidth = true
        return self
    }
    
    public var body : Self {
        self.font(UIFont.systemFont(ofSize: 14))
        self.textColor(UIColor.white.withAlphaComponent(0.92))
        self.numberOfLines(0)
        return self
    }
}
