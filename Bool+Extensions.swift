//
//  Bool+Extensions.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import Foundation

public extension Bool {
    
    /**
     Toggles `true`/`false`. Mutates the variable in place.
     */
    public mutating func toggle() {
        self = !self
    }
    
    /**
     Converts to `String`
     
     - Returns: the `Bool` as a `String`
     */
    public func toString() -> String {
        return "\(self)"
    }
    
}
