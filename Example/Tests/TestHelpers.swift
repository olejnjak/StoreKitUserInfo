//
//  TestHelpers.swift
//  StoreKitUserInfo
//
//  Created by Jakub Olejník on 04/05/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation

extension String {
    static var random: String {
        return String(arc4random()) + String(arc4random()) + String(arc4random())
    }
}

extension Int {
    static var random: Int {
        return Int(arc4random())
    }
}
