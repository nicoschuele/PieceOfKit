//
//  DateExtensionsTests.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 28.11.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
//

import XCTest
@testable import PieceOfKit

class DateExtensionsTests: XCTestCase {
    
    let strInitialDate = "1978-11-03 20:00:00 +0000"
    let strDatePlusOneMonth = "1978-12-03 20:00:00 +0000"
    let strDatePlusOneDay = "1978-11-04 20:00:00 +0000"
    let strDatePlusOneHour = "1978-11-03 21:00:00 +0000"
    let strDatePlusOneMinute = "1978-11-03 20:01:00 +0000"
    let strDatePlusOneSecond = "1978-11-03 20:00:01 +0000"
    let strDateMinusOneMonth = "1978-10-03 20:00:00 +0000"
    
    var initialDate: Date?
    var datePlusOneMonth: Date?
    var datePlusOneDay: Date?
    var datePlusOneHour: Date?
    var datePlusOneMinute: Date?
    var datePlusOneSecond: Date?
    var dateMinusOneMonth: Date?
    
    let strYYYYMMDD = "19781103"
    let strYYYYMMDDHHmm = "197811032000"
    
    var dateYYYYMMDD: Date?
    var dateYYYYMMDDHHmm: Date?
    
    override func setUp() {
        super.setUp()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
        
        initialDate = dateFormatter.date(from: strInitialDate)
        datePlusOneMonth = dateFormatter.date(from: strDatePlusOneMonth)
        datePlusOneDay = dateFormatter.date(from: strDatePlusOneDay)
        datePlusOneHour = dateFormatter.date(from: strDatePlusOneHour)
        datePlusOneMinute = dateFormatter.date(from: strDatePlusOneMinute)
        datePlusOneSecond = dateFormatter.date(from: strDatePlusOneSecond)
        dateMinusOneMonth = dateFormatter.date(from: strDateMinusOneMonth)
        
        let YYYYMMDDFormatter = DateFormatter()
        YYYYMMDDFormatter.dateFormat = "yyyyMMdd"
        dateYYYYMMDD = YYYYMMDDFormatter.date(from: strYYYYMMDD)
        
        let YYYYMMDDHHmmFormatter = DateFormatter()
        YYYYMMDDHHmmFormatter.dateFormat = "yyyyMMddHHmm"
        dateYYYYMMDDHHmm = YYYYMMDDHHmmFormatter.date(from: strYYYYMMDDHHmm)

    }
    
    func testAddOneMonth() {
        XCTAssertEqual(datePlusOneMonth!, initialDate?.addMonths(1))
    }
    
    func testAddOneDay() {
        XCTAssertEqual(datePlusOneDay!, initialDate?.addDays(1))
    }
    
    func testAddOneHour() {
        XCTAssertEqual(datePlusOneHour!, initialDate?.addHours(1))
    }
    
    func testAddOneMinute() {
        XCTAssertEqual(datePlusOneMinute!, initialDate?.addMinutes(1))
    }
    
    func testAddOneSecond() {
        XCTAssertEqual(datePlusOneSecond!, initialDate?.addSeconds(1))
    }
    
    func testRemoveOneMonth() {
        XCTAssertEqual(dateMinusOneMonth!, initialDate?.addMonths(-1))
    }
    
    func testYYYYMMDD() {
        XCTAssertEqual(dateYYYYMMDD!, Date.dateFromYYYYMMDD(strYYYYMMDD)!)
    }
    
    func testYYYYMMDDHHmm() {
        XCTAssertEqual(dateYYYYMMDDHHmm!, Date.dateFromYYYYMMDDHHmm(strYYYYMMDDHHmm)!)
    }
    
}
