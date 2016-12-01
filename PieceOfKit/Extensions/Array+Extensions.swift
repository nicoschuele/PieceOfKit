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
     Gets a random item from an Array
     
     - Returns: a random `Element?`
     */
    public func random() -> Element? {
        guard count > 0 else {
            return nil
        }
        
        return self[Int(arc4random_uniform(UInt32(self.count)))]
    }
    
}
