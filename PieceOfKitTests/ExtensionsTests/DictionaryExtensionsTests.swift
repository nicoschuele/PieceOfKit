//
//  DictionaryExtensionsTests.swift
//  PieceOfKit
//
//  Created by Nico Schuele on 30.11.16.
//  Copyright © 2016 Nico Schuele. All rights reserved.
//

import XCTest

class DictionaryExtensionsTests: XCTestCase {
    
    let dic = ["Name":"Nico", "Music":"Metal"]
    let dic2 = [1: "Blue", 2: "Green", 3: "White"]
    
    func testHasKey() {
        XCTAssertTrue(dic.has(key: "Name"))
        XCTAssertTrue(dic.has(key: "Music"))
        XCTAssertFalse(dic.has(key: "Age"))
        
        XCTAssertTrue(dic2.has(key: 2))
        XCTAssertFalse(dic2.has(key: 8))
    }
}
