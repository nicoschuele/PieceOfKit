//
//  Date+Extension.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import Foundation

/// Useful extensions for the Date class
public extension Date {
    
    /**
     Add months to a Date
     
     - Parameter months: number of months as `Int`. Accepts negative numbers.
     
     - Returns: a `Date`
     */
    public func addMonths(_ months: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .month, value: months, to: self)!
    }
    
    /**
     Add days to a Date
     
     - Parameter days: number of days as `Int`. Accepts negative numbers.
     
     - Returns: a `Date`
     */
    public func addDays(_ days: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .day, value: days, to: self)!
    }
    
    /**
     Add hours to a Date
     
     - Parameter hours: number of hours as `Int`. Accepts negative numbers.
     
     - Returns: a `Date`
     */
    public func addHours(_ hours: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .hour, value: hours, to: self)!
    }
    
    /**
     Add minutes to a Date
     
     - Parameter minutes: number of minutes as `Int`. Accepts negative numbers.
     
     - Returns: a `Date`
     */
    public func addMinutes(_ minutes: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .minute, value: minutes, to: self)!
    }
    
    /**
     Add seconds to a Date
     
     - Parameter seconds: number of seconds as `Int`. Accepts negative numbers.
     
     - Returns: a `Date`
     */
    public func addSeconds(_ seconds: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .second, value: seconds, to: self)!
    }
    
    /**
     Turns a Date into a String 
     
     - Parameter format: a `StringDateFormat`
     
     - Returns: a `String` in the format YYYYMMDD or YYYYMMDDHHmm
     */
    public func toString(stringDateFormat format: StringDateFormat = StringDateFormat.YYYYMMDD) -> String {
        let dateFormatter = DateFormatter()
        
        switch format {
        case .YYYYMMDD:
            dateFormatter.dateFormat = "yyyyMMdd"
        case .YYYYMMDDHHmm:
            dateFormatter.dateFormat = "yyyyMMddHHmm"
        }
        
        return dateFormatter.string(from: self)
    }
    
    /**
     Turns a `String` into a `Date`
     
     - Parameter format: the input format of the string. For example, "20161129" is `StringDateFormat.YYYYMMDD`
     
     - Returns: a `Date`
     */
    public static func dateFromString(_ string: String, stringDateFormat format: StringDateFormat = StringDateFormat.YYYYMMDD) -> Date? {
        let dateFormatter = DateFormatter()
        
        switch format {
        case .YYYYMMDD:
            dateFormatter.dateFormat = "yyyyMMdd"
        case .YYYYMMDDHHmm:
            dateFormatter.dateFormat = "yyyyMMddHHmm"
        }
        
        return dateFormatter.date(from: string)
    }
    
}
