//
//  Date+Extension.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 28.11.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
//

import Foundation

public extension Date {
    
    public func addMonths(_ months: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .month, value: months, to: self)!
    }
    
    public func addDays(_ days: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .day, value: days, to: self)!
    }
    
    public func addHours(_ hours: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .hour, value: hours, to: self)!
    }
    
    public func addMinutes(_ minutes: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .minute, value: minutes, to: self)!
    }
    
    public func addSeconds(_ seconds: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .second, value: seconds, to: self)!
    }
    
    public static func dateFromYYYYMMDD(_ string: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        return dateFormatter.date(from: string)
    }
    
    public static func dateFromYYYYMMDDHHmm(_ string: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMddHHmm"
        return dateFormatter.date(from: string)
    }
    
    //TODO: implement Date to String methods
}
