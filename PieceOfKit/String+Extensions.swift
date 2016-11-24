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
     
     - Parameter newLine: if `true`, will trim newline characters as well. Defaults to `false`.
     
     - Returns: a trimmed `String`
     */
    func trim(shouldTrimNewLineCharacters newLine: Bool = false) -> String {
        let string = self
        
        if newLine {
            return string.trimmingCharacters(in: .whitespacesAndNewlines)
            
        } else {
            return string.trimmingCharacters(in: .whitespaces)
        }
    }
    
    /**
     Gets a substring from a string using a range. Function taken from [http://stackoverflow.com/a/39509186/1296610](http://stackoverflow.com/a/39509186/1296610)
     
     - Parameter range: The non inclusive range in the `String` object. For example, `0..<5`
     
     - Returns: a substring as `String`
    */
    func substring(_ range: Range<Int>) -> String {
        let fromIndex = self.index(self.startIndex, offsetBy: range.lowerBound)
        let toIndex = self.index(self.startIndex, offsetBy: range.upperBound)
        return self.substring(with: Range<String.Index>(uncheckedBounds: (lower: fromIndex, upper: toIndex)))
    }
    
    func length() -> Int {
        return self.characters.count
    }
    
}
