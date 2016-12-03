//
//  Date+Extension.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import Foundation

/// Useful extensions for the Date class. Several methods taken from [EZSwiftExtensions](https://github.com/goktugyil/EZSwiftExtensions)
public extension Date {
    
    //MARK: Properties
    
    /// Returns true if Date is today
    public var isToday: Bool {
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        return format.string(from: self) == format.string(from: Date())
    }
    
    /// Returns true if Date is yesterday
    public var isYesterday: Bool {
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        let yesterDay = Calendar.current.date(byAdding: .day, value: -1, to: Date())
        return format.string(from: self) == format.string(from: yesterDay!)
    }
    
    /// Returns true if Date is tomorrow
    public var isTomorrow: Bool {
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        let tomorrow = Calendar.current.date(byAdding: .day, value: 1, to: Date())
        return format.string(from: self) == format.string(from: tomorrow!)
    }
    
    /// Returns true if Date is within this month
    public var isThisMonth: Bool {
        let today = Date()
        return self.month == today.month && self.year == today.year
    }
    
    /// Returns true if Date is within this week
    public var isThisWeek: Bool {
        return self.minutesInBetweenDate(Date()) <= Double(24 * 60 * 7)
    }
    
    /// Returns the year component of a Date as `Int`
    public var year: Int {
        return NSCalendar.current.component(Calendar.Component.year, from: self)
    }
    
    /// Returns the month component of a Date as `Int`
    public var month: Int {
        return NSCalendar.current.component(Calendar.Component.month, from: self)
    }
    
    /// Returns the weekday of a Date as `String`
    public var weekday: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
    
    /// Returns the month component of a Date as `String`
    public var monthAsString: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM"
        return dateFormatter.string(from: self)
    }
    
    /// Returns the day component of a Date as `Int`
    public var day: Int {
        return NSCalendar.current.component(Calendar.Component.day, from: self)
    }
    
    /// Returns the hour component of a Date as `Int`
    public var hour: Int {
        return NSCalendar.current.component(Calendar.Component.hour, from: self)
    }
    
    /// Returns the minute component of a Date as `Int`
    public var minute: Int {
        return NSCalendar.current.component(Calendar.Component.minute, from: self)
    }
    
    /// Returns the second component of a Date as `Int`
    public var second: Int {
        return NSCalendar.current.component(Calendar.Component.second, from: self)
    }
    
    //MARK: Instance methods
    
    /**
     Returns how many days have passed between the Date and another one
     
     - Parameter date: The `Date` to compare against
     
     - Returns: the number of days as `Double`
     */
    public func daysInBetweenDate(_ date: Date) -> Double {
        var diff = self.timeIntervalSince1970 - date.timeIntervalSince1970
        diff = fabs(diff/86400)
        return diff
    }
    
    /**
     Returns how many hours have passed between the Date and another one
     
     - Parameter date: The `Date` to compare against
     
     - Returns: the number of hours as `Double`
     */
    public func hoursInBetweenDate(_ date: Date) -> Double {
        var diff = self.timeIntervalSince1970 - date.timeIntervalSince1970
        diff = fabs(diff/3600)
        return diff
    }
    
    /**
     Returns how many minutes have passed between the Date and another one
     
     - Parameter date: The `Date` to compare against
     
     - Returns: the number of minutes as `Double`
     */
    public func minutesInBetweenDate(_ date: Date) -> Double {
        var diff = self.timeIntervalSince1970 - date.timeIntervalSince1970
        diff = fabs(diff/60)
        return diff
    }
    
    /**
     Returns how many seconds have passed between the Date and another one
     
     - Parameter date: The `Date` to compare against
     
     - Returns: the number of seconds as `Double`
     */
    public func secondsInBetweenDate(_ date: Date) -> Double {
        var diff = self.timeIntervalSince1970 - date.timeIntervalSince1970
        diff = fabs(diff)
        return diff
    }
    
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
     
     - Returns: a `String` in the format YYYYMMDD, YYYYMMDDHHmm or YYYYMMDDHHmmss
     */
    public func toString(stringDateFormat format: StringDateFormat = StringDateFormat.YYYYMMDD) -> String {
        let dateFormatter = DateFormatter()
        
        switch format {
        case .YYYYMMDD:
            dateFormatter.dateFormat = "yyyyMMdd"
        case .YYYYMMDDHHmm:
            dateFormatter.dateFormat = "yyyyMMddHHmm"
        case .YYYYMMDDHHmmss:
            dateFormatter.dateFormat = "yyyyMMddHHmmss"
        }
        return dateFormatter.string(from: self)
    }
    
    //MARK: Class methods
    
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
        case .YYYYMMDDHHmmss:
            dateFormatter.dateFormat = "yyyyMMddHHmmss"
        }
        
        return dateFormatter.date(from: string)
    }
    
}
