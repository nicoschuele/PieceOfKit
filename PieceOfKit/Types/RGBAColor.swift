//
//  RGBAColor.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import Foundation

/// Simple structure to work with RGB(+alpha) colors
public struct RGBAColor {
    /// Level of red (0-255)
    public var red: Int
    /// Level of green (0-255)
    public var green: Int
    /// Level of blue (0-255)
    public var blue: Int
    /// Level of alpha (0.0-1.0)
    public var alpha: CGFloat    
}

