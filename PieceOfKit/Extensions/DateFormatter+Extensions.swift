//
//  DateFormatter+Extensions.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import Foundation

/// Useful extensions for the DateFormatter class
public extension DateFormatter {
    
    /**
     Returns a `DateFormatter` from a `PieceOfKit.StringDateFormat`
     
     - Parameter stringDateFormat: the `StringDateFormat` to use
     
     - Returns: a `DateFormatter` corresponding to the `StringDateFormat`
     */
    public static func fromStringDateFormat(_ stringDateFormat: StringDateFormat) -> DateFormatter {
        let dateFormatter = DateFormatter()
        
        switch stringDateFormat {
        case .yyyyMMdd:
            dateFormatter.dateFormat = "yyyyMMdd"
        case .yyyyMMddHHmm:
            dateFormatter.dateFormat = "yyyyMMddHHmm"
        case .yyyyMMddHHmmss:
            dateFormatter.dateFormat = "yyyyMMddHHmmss"
        }
        return dateFormatter
    }
    
}
