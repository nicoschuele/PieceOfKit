//
//  Array+Extensions.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import Foundation

/// Useful extensions for the Bool class
public extension Array {
    
    /**
     Gets a random item from the array
     
     - Returns: a random `Element?`
     */
    public func random() -> Element? {
        guard count > 0 else {
            return nil
        }
        
        return self[Int(arc4random_uniform(UInt32(self.count)))]
    }
    
    /**
     Inserts a new `Element` at the beginning of the array
     */
    public mutating func prepend(_ newElement: Element) {
        insert(newElement, at: 0)
    }
    
}
