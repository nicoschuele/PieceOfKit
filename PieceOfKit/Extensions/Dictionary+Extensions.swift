//
//  Dictionary+Extensions.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import Foundation

/// Useful extensions for the Bool class
public extension Dictionary {
    
    /**
     Checks for the existence of a key
     
     - Parameter key: the key you are looking for
     
     - Returns: `Bool`
     */
    func has(key: Key) -> Bool {
        return index(forKey: key) != nil
    }    
}
