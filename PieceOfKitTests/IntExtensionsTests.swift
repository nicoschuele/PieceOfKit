//
//  IntExtensionsTests.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 30.11.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
//

import XCTest
@testable import PieceOfKit

class IntExtensionsTests: XCTestCase {
    
    func testToString() {
        let a = 3
        let b = 11
        let c = -1978
        
        XCTAssertEqual(a.toString(), "3")
        XCTAssertEqual(b.toString(), "11")
        XCTAssertEqual(c.toString(), "-1978")
    }
    
}
