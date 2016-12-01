//
//  ArrayExtensionsTests.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 01.12.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
//

import XCTest
@testable import PieceOfKit

class ArrayExtensionsTests: XCTestCase {
    
    func testRandom() {
        let notEmpty = [1,2,3,4,5]
        let empty: [Int] = []
        
        var array = Array<Int>()
        for _ in 1...100 {
            array.append(notEmpty.random()!)
        }
        
        XCTAssertNil(empty.random())
        
        for i in array {
            XCTAssertTrue(i >= 1 && i <= 5)
        }
        
        XCTAssertTrue(array.contains(1))
        XCTAssertTrue(array.contains(5))
    }
    
}
