//
//  String+Extensions.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 24.11.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
//

import Foundation

/// Useful extensions for the String class
public extension String {
    
    /**
     Trims a string from leading and trailing whitespaces and optionally newline characters
     
     - Parameters:
     - newLine: if true, will trim newline characters as well. Defaults to false.
     
     - Returns: a trimmed String
     */
    func trim(shouldTrimNewLineCharacters newLine: Bool = false) -> String {
        let string = self
        
        if newLine {
            return string.trimmingCharacters(in: .whitespacesAndNewlines)
            
        } else {
            return string.trimmingCharacters(in: .whitespaces)
        }
    }
    
    func substring(_ r: Range<Int>) -> String {
        let fromIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
        let toIndex = self.index(self.startIndex, offsetBy: r.upperBound)
        return self.substring(with: Range<String.Index>(uncheckedBounds: (lower: fromIndex, upper: toIndex)))
    }
    
}
