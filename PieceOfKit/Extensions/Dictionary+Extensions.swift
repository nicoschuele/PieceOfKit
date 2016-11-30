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
    public func has(key: Key) -> Bool {
        return index(forKey: key) != nil
    }
    
    /**
     Converts the dictionary into a string
     
     Format: `"key":"value","key2":"value2"`
     
     - Returns: a `String` representation of the `Dictionary`
     */
    public func toString() -> String {
        var output = ""
        var count = 0
        for (k,v) in self {
            count += 1
            output += "\"\(k)\":\"\(v)\""
            if count < self.keys.count {
                output += ","
            }
        }
        return output
    }
}
