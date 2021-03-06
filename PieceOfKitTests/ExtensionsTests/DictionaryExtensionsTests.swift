//
//  DictionaryExtensionsTests.swift
//  PieceOfKit
//
//  Copyright © 2016 Nico Schuele.
//  Licensed under the Apache License, Version 2.0.
//

import XCTest
@testable import PieceOfKit

class DictionaryExtensionsTests: XCTestCase {
    
    let dic = ["Name": "Nico", "Music": "Metal"]
    let dic2 = [1: "Blue", 2: "Green", 3: "White"]
    let dic3 = ["first": 1, "second": 2]
    let dic4: [String:String] = [:]
    
    func testHasKey() {
        XCTAssertTrue(dic.has(key: "Name"))
        XCTAssertTrue(dic.has(key: "Music"))
        XCTAssertFalse(dic.has(key: "Age"))
        
        XCTAssertTrue(dic2.has(key: 2))
        XCTAssertFalse(dic2.has(key: 8))
    }
    
    func testToString() {
        let dic = [1: "Blue", 2: "Green", 3: "White"]
        
        XCTAssertTrue(dic.toString().contains("\"1\":\"Blue\""))
        XCTAssertTrue(dic.toString().contains("\"2\":\"Green\""))
        XCTAssertTrue(dic.toString().contains("\"3\":\"White\""))
    }
    
    func testToJSONString() {
        let dic = ["Name":"Nico", "Music":"Metal"]
        XCTAssertTrue((dic.toJSONString()?.contains("{"))!)
        XCTAssertTrue((dic.toJSONString()?.contains("}"))!)
        XCTAssertTrue((dic.toJSONString()?.contains("\"Music\" : \"Metal\""))!)        
    }
    
    func testToArray() {
        let array = dic.toStringArray()
        let array2 = dic3.toStringArray()
        let array3 = dic4.toStringArray()
        
        XCTAssertTrue(array.contains("Metal"))
        XCTAssertTrue(array.contains("Nico"))
        XCTAssertTrue(array2.contains("1"))
        XCTAssertTrue(array2.contains("2"))
        XCTAssertTrue(array3.count == 0)
    }
}
