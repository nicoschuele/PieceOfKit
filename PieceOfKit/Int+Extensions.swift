//
//  Int+Extensions.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 30.11.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
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
