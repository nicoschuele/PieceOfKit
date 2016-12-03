//
//  DateFormatterExtensionsTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class DateFormatterExtensionsTests: XCTestCase {
    
    func testDateFormatterFromStringFormat() {
        let formatter = DateFormatter.fromStringDateFormat(.yyyyMMdd)
        XCTAssertEqual(formatter.dateFormat, "yyyyMMdd")
    }
    
}
