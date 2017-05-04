//
//  StoreKitUserInfo.swift
//  Pods
//
//  Created by Jakub Olejník on 04/05/2017.
//
//

import Foundation

protocol StoreKitUserInfo {
    var stringRepresentation: String { get }
    
    init?(stringRepresentation: String)
}

extension Int: StoreKitUserInfo {
    var stringRepresentation: String {
        return String(self)
    }
    
    init?(stringRepresentation: String) {
        guard let int = Int(stringRepresentation) else { return nil }
        self = int
    }
}

extension String: StoreKitUserInfo {
    var stringRepresentation: String {
        return self
    }
    
    init?(stringRepresentation: String) {
        self = stringRepresentation
    }
}
