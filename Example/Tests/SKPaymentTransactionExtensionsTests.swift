//
//  SKPaymentTransactionExtensionsTests.swift
//  StoreKitUserInfo
//
//  Created by Jakub Olejník on 04/05/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import XCTest
import StoreKit
@testable import StoreKitUserInfo

private struct TestTransaction: PaymentTransactionProtocol {
    let transactionIdentifier: String?
    
    init(transactionIdentifier: String? = .random) {
        self.transactionIdentifier = transactionIdentifier
    }
}

class SKPaymentTransactionExtensionsTests: XCTestCase {
    
    var transaction: PaymentTransactionProtocol!
    
    // MARK: Setup
    
    override func setUp() {
        StoreKitStore = UserDefaults(suiteName: name!)!
        transaction = TestTransaction()
    }
    
    // MARK: Tests
    
    func testNothingHappensWithoutTransactionID() {
        transaction = TestTransaction(transactionIdentifier: nil)
        
        let userInfo: Int? = transaction.getUserInfo()
        
        XCTAssertNil(userInfo)
        
        transaction.setUserInfo(1)
        
        let userInfo2: Int? = transaction.getUserInfo()
        
        XCTAssertNil(userInfo2)
    }
    
    func testUserInfoIsSaved() {
        let int = Int.random
        
        transaction.setUserInfo(int)
        
        let savedInt: Int? = transaction.getUserInfo()
        
        XCTAssertEqual(int, savedInt)
    }
    
    func testUserInfoCanBeDeleted() {
        let int = Int.random
        
        transaction.setUserInfo(int)
        
        let savedInt: Int? = transaction.getUserInfo()
        
        XCTAssertEqual(int, savedInt)
        
        transaction.setUserInfo(nil)
        
        let savedInt2: Int? = transaction.getUserInfo()
        
        XCTAssertNil(savedInt2)
    }
}
