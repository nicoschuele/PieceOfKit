//
//  UIColor+Extensions.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import Foundation

/// Useful extensions for the UIColor class
public extension UIColor {
    
    /**
     Inits a `UIColor` from RGB `Int` values + alpha from CGFloat (defaults to `1`)
     
     - Parameter r: Red value between 0-255
     - Parameter g: Green value between 0-255
     - Parameter b: Blue value between 0-255
     - Parameter a: Alpha value between 0.0-1.0
     */
    public convenience init(r: Int, g: Int, b: Int, a: CGFloat = 1) {
        var re = r > 255 ? 255 : r
        var gr = g > 255 ? 255 : g
        var bl = b > 255 ? 255 : b
        var al = a > 1.0 ? 1.0 : a
        re = re < 0 ? 0 : re
        gr = gr < 0 ? 0 : gr
        bl = bl < 0 ? 0 : bl
        al = al < 0.0 ? 0.0 : al
        
        let rFloat = CGFloat(re)
        let gFloat = CGFloat(gr)
        let bFloat = CGFloat(bl)
        self.init(red: rFloat / 255.0, green: gFloat / 255.0, blue: bFloat / 255.0, alpha: al)
    }
    
    /**
     Gets the red component
     
     - Returns: `Int`
     */
    public func getRed() -> Int {
        let r = CIColor(color: self).red * 255
        return Int(ceil(r))
    }
    
    /**
     Gets the green component
     
     - Returns: `Int`
     */
    public func getGreen() -> Int {
        let g = CIColor(color: self).green * 255
        return Int(ceil(g))
    }
    
    /**
     Gets the blue component
     
     - Returns: `Int`
     */
    public func getBlue() -> Int {
        let b = CIColor(color: self).blue * 255
        return Int(ceil(b))
    }
    
    /**
     Gets the alpha component
     
     - Returns: `CGFloat`
     */
    public func getAlpha() -> CGFloat {
        return CIColor(color: self).alpha        
    }

    /**
     Converts the UIColor to a readable string.
     
     Using the format: `"Red: 123 - Green: 123 - Blue: 123 - Alpha: 1.0"`
     
     - Returns: `String`
     */
    public func toString() -> String {
        return "Red: \(self.getRed()) - Green: \(self.getGreen()) - Blue: \(self.getBlue()) - Alpha: \(self.getAlpha())"
    }
    
}
