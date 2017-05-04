//
//  StoreKitUserInfo.swift
//  Pods
//
//  Created by Jakub Olejník on 04/05/2017.
//
//

import Foundation

public protocol StoreKitUserInfo {
    var stringRepresentation: String { get }
    
    init?(stringRepresentation: String)
}

extension Int: StoreKitUserInfo {
    public var stringRepresentation: String {
        return String(self)
    }
    
    public init?(stringRepresentation: String) {
        guard let int = Int(stringRepresentation) else { return nil }
        self = int
    }
}

extension String: StoreKitUserInfo {
    public var stringRepresentation: String {
        return self
    }
    
    public init?(stringRepresentation: String) {
        self = stringRepresentation
    }
}
