//
//  Int+Extensions.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import Foundation

/// Useful extensions for the Int class
public extension Int {
    
    /**
     Executes a block multiple times
     
     Example:
     
            3.times {
                print("Hello...")
                print("...you")
            }
     */
    public func times (_ function: () -> ()) {
        for _ in 0..<self {
            _ = function()
        }
    }
    
    /**
     Converts to `String`
     
     - Returns: the `Int` as a `String`
     */
    public func toString() -> String {
        return "\(self)"
    }
}
