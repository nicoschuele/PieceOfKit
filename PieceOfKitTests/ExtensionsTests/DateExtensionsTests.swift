//
//  DateExtensionsTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class DateExtensionsTests: XCTestCase {
    
    let strInitialDate = "1978-11-03 20:00:00 +0000"
    var dateFormatter: DateFormatter! = nil
    var initialDate: Date?
    
    
    override func setUp() {
        super.setUp()
        
        dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
        initialDate = dateFormatter.date(from: strInitialDate)
    }
    
    func testAddOneMonth() {
        let strDatePlusOneMonth = "1978-12-03 20:00:00 +0000"
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
        let datePlusOneMonth = dateFormatter.date(from: strDatePlusOneMonth)
        XCTAssertEqual(datePlusOneMonth!, initialDate?.addMonths(1))
    }
    
    func testAddOneDay() {
        let strDatePlusOneDay = "1978-11-04 20:00:00 +0000"
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
        let datePlusOneDay = dateFormatter.date(from: strDatePlusOneDay)
        XCTAssertEqual(datePlusOneDay!, initialDate?.addDays(1))
    }
    
    func testAddOneHour() {
        let strDatePlusOneHour = "1978-11-03 21:00:00 +0000"
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
        let datePlusOneHour = dateFormatter.date(from: strDatePlusOneHour)
        XCTAssertEqual(datePlusOneHour!, initialDate?.addHours(1))
    }
    
    func testAddOneMinute() {
        let strDatePlusOneMinute = "1978-11-03 20:01:00 +0000"
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
        let datePlusOneMinute = dateFormatter.date(from: strDatePlusOneMinute)
        XCTAssertEqual(datePlusOneMinute!, initialDate?.addMinutes(1))
    }
    
    func testAddOneSecond() {
        let strDatePlusOneSecond = "1978-11-03 20:00:01 +0000"
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
        let datePlusOneSecond = dateFormatter.date(from: strDatePlusOneSecond)
        XCTAssertEqual(datePlusOneSecond!, initialDate?.addSeconds(1))
    }
    
    func testRemoveOneMonth() {
        let strDateMinusOneMonth = "1978-10-03 20:00:00 +0000"
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
        let dateMinusOneMonth = dateFormatter.date(from: strDateMinusOneMonth)
        XCTAssertEqual(dateMinusOneMonth!, initialDate?.addMonths(-1))
    }
    
    func testYYYYMMDD() {
        let strYYYYMMDD = "19781103"
        dateFormatter.dateFormat = "yyyyMMdd"
        let dateYYYYMMDD = dateFormatter.date(from: strYYYYMMDD)
        XCTAssertEqual(dateYYYYMMDD!, Date.dateFromString(strYYYYMMDD))
    }
    
    func testYYYYMMDDHHmm() {
        let strYYYYMMDDHHmm = "197811032000"
        dateFormatter.dateFormat = "yyyyMMddHHmm"
        let dateYYYYMMDDHHmm = dateFormatter.date(from: strYYYYMMDDHHmm)
        XCTAssertEqual(dateYYYYMMDDHHmm!, Date.dateFromString(strYYYYMMDDHHmm, stringDateFormat: StringDateFormat.YYYYMMDDHHmm))
    }
    
    func testStringFromDateAsYYYYMMDD() {
        let stringDate = "19781103"
        let dateFromString = Date.dateFromString(stringDate)
        XCTAssertEqual(stringDate, dateFromString!.stringFromDate())
    }
    
    func testStringFromDateAsYYYYMMDDHHmm() {
        let stringDate = "197811031400"
        let dateFromString = Date.dateFromString(stringDate, stringDateFormat: .YYYYMMDDHHmm)
        XCTAssertEqual(stringDate, dateFromString?.stringFromDate(stringDateFormat: .YYYYMMDDHHmm))
    }
    
    func testDateFromStringCanBeNil() {
        let invalidStringDate = "Hello"
        let dateFromString = Date.dateFromString(invalidStringDate, stringDateFormat: .YYYYMMDDHHmm)
        XCTAssertEqual(dateFromString, nil)
    }
    
}
