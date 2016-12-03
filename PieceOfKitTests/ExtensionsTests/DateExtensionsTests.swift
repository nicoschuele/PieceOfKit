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
    
    func testYYYYMMDDHHmmss() {
        let strYYYYMMDDHHmmss = "19781103200010"
        dateFormatter.dateFormat = "yyyyMMddHHmmss"
        let dateYYYYMMDDHHmmss = dateFormatter.date(from: strYYYYMMDDHHmmss)
        XCTAssertEqual(dateYYYYMMDDHHmmss!, Date.dateFromString(strYYYYMMDDHHmmss, stringDateFormat: StringDateFormat.YYYYMMDDHHmmss))
    }
    
    func testStringFromDateAsYYYYMMDD() {
        let stringDate = "19781103"
        let dateFromString = Date.dateFromString(stringDate)
        XCTAssertEqual(stringDate, dateFromString!.toString())
    }
    
    func testStringFromDateAsYYYYMMDDHHmm() {
        let stringDate = "197811031400"
        let dateFromString = Date.dateFromString(stringDate, stringDateFormat: .YYYYMMDDHHmm)
        XCTAssertEqual(stringDate, dateFromString?.toString(stringDateFormat: .YYYYMMDDHHmm))
    }
    
    func testStringFromDateAsYYYYMMDDHHmmss() {
        let stringDate = "19781103140010"
        let dateFromString = Date.dateFromString(stringDate, stringDateFormat: .YYYYMMDDHHmmss)
        XCTAssertEqual(stringDate, dateFromString?.toString(stringDateFormat: .YYYYMMDDHHmmss))
    }
    
    func testDateFromStringCanBeNil() {
        let invalidStringDate = "Hello"
        let dateFromString = Date.dateFromString(invalidStringDate, stringDateFormat: .YYYYMMDDHHmm)
        XCTAssertEqual(dateFromString, nil)
    }
    
    func testToday() {
        let yesterday = Date().addDays(-1)
        let today = Date()
        let tomorrow = Date().addDays(1)
        
        XCTAssertTrue(today.isToday)
        XCTAssertFalse(tomorrow.isToday)
        XCTAssertFalse(yesterday.isToday)
    }
    
    func testTomorrow() {
        let yesterday = Date().addDays(-1)
        let today = Date()
        let tomorrow = Date().addDays(1)
        
        XCTAssertTrue(tomorrow.isTomorrow)
        XCTAssertFalse(today.isTomorrow)
        XCTAssertFalse(yesterday.isTomorrow)
    }
    
    func testYesterday() {
        let yesterday = Date().addDays(-1)
        let today = Date()
        let tomorrow = Date().addDays(1)
        
        XCTAssertTrue(yesterday.isYesterday)
        XCTAssertFalse(today.isTomorrow)
        XCTAssertFalse(tomorrow.isYesterday)
    }
    
    func testThisMonth() {
        let today = Date()
        let twoMonthsAgo = Date().addMonths(-2)
        let twoMonthsLater = Date().addMonths(2)
        
        XCTAssertTrue(today.isThisMonth)
        XCTAssertFalse(twoMonthsAgo.isThisMonth)
        XCTAssertFalse(twoMonthsLater.isThisMonth)
    }
    
    func testIsThisWeek() {
        let today = Date()
        let inTwoWeeks = Date().addDays(14)
        let twoWeeksAgo = Date().addDays(-14)
        
        XCTAssertTrue(today.isThisWeek)
        XCTAssertFalse(inTwoWeeks.isThisWeek)
        XCTAssertFalse(twoWeeksAgo.isThisWeek)
    }
    
    func testYearComponent() {
        let someDay = Date.dateFromString("19781103", stringDateFormat: PieceOfKit.StringDateFormat.YYYYMMDD)
        XCTAssertEqual(someDay?.year, 1978)
    }
    
    func testMonthComponent() {
        let someDay = Date.dateFromString("19781103", stringDateFormat: PieceOfKit.StringDateFormat.YYYYMMDD)
        XCTAssertEqual(someDay?.month, 11)
    }
    
    func testDayComponent() {
        let someDay = Date.dateFromString("19781103", stringDateFormat: PieceOfKit.StringDateFormat.YYYYMMDD)
        XCTAssertEqual(someDay?.day, 3)
    }
    
    func testHourComponent() {
        let someDay = Date.dateFromString("197811031430", stringDateFormat: PieceOfKit.StringDateFormat.YYYYMMDDHHmm)
        XCTAssertEqual(someDay?.hour, 14)
    }
    
    func testMinuteComponent() {
        let someDay = Date.dateFromString("197811031430", stringDateFormat: PieceOfKit.StringDateFormat.YYYYMMDDHHmm)
        XCTAssertEqual(someDay?.minute, 30)
    }
    
    func testSecondComponent() {
        let someDay = Date.dateFromString("19781103143010", stringDateFormat: PieceOfKit.StringDateFormat.YYYYMMDDHHmmss)
        XCTAssertEqual(someDay?.second, 10)
    }
    
    func testWeekday() {
        let someDay = Date.dateFromString("20161203")
        XCTAssertEqual(someDay?.weekday, "Saturday")
    }
    
    func testMonth() {
        let someDay = Date.dateFromString("20161203")
        XCTAssertEqual(someDay?.monthAsString, "December")
    }
    
    func testDaysInBetween() {
        let day = Date.dateFromString("20161201")
        let someDay = Date.dateFromString("20161201")?.addDays(3)
        XCTAssertEqual(day?.daysInBetweenDate(someDay!), 3.0)
    }
    
    func testHoursInBetween() {
        let day = Date.dateFromString("201612011400", stringDateFormat: .YYYYMMDDHHmm)
        let someDay = Date.dateFromString("201612011400", stringDateFormat: .YYYYMMDDHHmm)?.addHours(3)
        XCTAssertEqual(day?.hoursInBetweenDate(someDay!), 3.0)
    }
    
    func testMinutesInBetween() {
        let day = Date.dateFromString("201612011400", stringDateFormat: .YYYYMMDDHHmm)
        let someDay = Date.dateFromString("201612011400", stringDateFormat: .YYYYMMDDHHmm)?.addMinutes(3)
        XCTAssertEqual(day?.minutesInBetweenDate(someDay!), 3.0)
    }
    
    func testSecondsInBetween() {
        let day = Date.dateFromString("20161201140010", stringDateFormat: .YYYYMMDDHHmmss)
        let someDay = Date.dateFromString("20161201140010", stringDateFormat: .YYYYMMDDHHmmss)?.addMinutes(1)
        XCTAssertEqual(day?.secondsInBetweenDate(someDay!), 60.0)
    }
    
}



















