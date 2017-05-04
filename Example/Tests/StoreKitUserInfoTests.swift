//
//  StoreKitUserInfoTests.swift
//  StoreKitUserInfo
//
//  Created by Jakub Olejník on 04/05/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
@testable import StoreKitUserInfo

class StoreKitUserInfoTests: XCTestCase {
    
    // MARK: Tests
    
    func testIntSerializationWhenCorrect() {
        let int = Int(arc4random())
        
        XCTAssertEqual(String(int), int.stringRepresentation)
        XCTAssertEqual(int, Int(stringRepresentation: int.stringRepresentation))
        
        let int2 = Int(arc4random())
        
        XCTAssertEqual(String(int2), int2.stringRepresentation)
        XCTAssertEqual(int2, Int(stringRepresentation: int2.stringRepresentation))
    }
    
    func testIntIsNotCreatedFromInvalidString() {
        XCTAssertNil(Int(stringRepresentation: "abc"))
    }
    
    func testStringSerialization() {
        let string = String(arc4random()) + String(arc4random()) + String(arc4random())
        XCTAssertEqual(string, string.stringRepresentation)
        XCTAssertEqual(string, String(stringRepresentation: string.stringRepresentation))
    }
}
