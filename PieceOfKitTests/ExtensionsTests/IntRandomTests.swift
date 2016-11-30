//
//  IntRandomTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class IntRandomTests: XCTestCase {
    
    func testRandomRange() {
        var results = Array<Int>()
        
        for _ in 1...5000 {
            results.append(Int.randomNumber(range: 5...10))
        }
        
        for i in results {
            XCTAssertTrue(i >= 5 && i <= 10)
        }
        
        XCTAssertTrue(results.contains(5))
        XCTAssertTrue(results.contains(10))
    }
    
}
