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
    
    //MARK: Static methods
    
    /**
     Returns a random number within a `ClosedRange<Int>` (like `1...10`)
     
     - Returns: random `Int`
     */
    public static func randomNumber(range: ClosedRange<Int> = 1...6) -> Int {
        let min = range.lowerBound
        let max = range.upperBound
        return Int(arc4random_uniform(UInt32(1 + max - min))) + min
    }
}
