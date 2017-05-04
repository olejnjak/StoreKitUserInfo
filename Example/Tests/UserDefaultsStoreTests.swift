//
//  UserDefaultsStoreTests.swift
//  StoreKitUserInfo
//
//  Created by Jakub Olejník on 04/05/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
@testable import StoreKitUserInfo

class UserDefaultsStoreTests: XCTestCase {
    
    var store: StoreKitUserInfoStore!
    
    // MARK: Setup
    
    override func setUp() {
        store = UserDefaults(suiteName: name!)!
    }
    
    // MARK: Tests
 
    func testGettingNilValuesWhenEmpty() {
        let key = String.random
        let int: Int? = store.loadUserInfo(forKey: key)
        
        XCTAssertNil(int)
    }
    
    func testSavingIntValues() {
        let int = Int.random
        let key = String.random
        
        store.save(userInfo: int, forKey: key)
        
        let savedInt: Int? = store.loadUserInfo(forKey: key)
        
        XCTAssertEqual(int, savedInt)
    }
    
    func testSavingStringValues() {
        let string = String.random
        let key = String.random
        
        store.save(userInfo: string, forKey: key)
        
        let savedString: String? = store.loadUserInfo(forKey: key)
        
        XCTAssertEqual(string, savedString)
    }
}
