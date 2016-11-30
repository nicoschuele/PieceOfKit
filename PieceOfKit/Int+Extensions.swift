//
//  Int+Extensions.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 30.11.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
//

import Foundation

public extension Int {
    
    public func times (_ function: () -> ()) {
        for _ in 0..<self {
            _ = function()
        }
    }
    
    public func toString() -> String {
        return "\(self)"
    }
}
