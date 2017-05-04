//
//  StoreKitUserInfoStore.swift
//  Pods
//
//  Created by Jakub Olejník on 04/05/2017.
//
//

import Foundation

protocol StoreKitUserInfoStore {
    func deleteUserInfo(forKey key: String)
    func save(userInfo: StoreKitUserInfo, forKey key: String)
    func loadUserInfo<Result: StoreKitUserInfo>(forKey key: String) -> Result?
}

extension UserDefaults: StoreKitUserInfoStore {
    private static var key = "sdasq3e1jh4b15ou2y98yh29_storekituserinfo_storage_3298482wiugui2g3y8ig42i3brvy23t"
    
    private var storage: [String: String] {
        get {
            return object(forKey: UserDefaults.key)
                .flatMap { $0 as? Data }
                .flatMap { try? JSONSerialization.jsonObject(with: $0, options: .init(rawValue: 0)) }
                .flatMap { $0 as? [String: String] } ?? [:]
        }
        set {
            guard let data = try? JSONSerialization.data(withJSONObject: storage, options: .init(rawValue: 0)) else { return }
            set(data, forKey: UserDefaults.key)
            synchronize()
        }
    }
    
    func deleteUserInfo(forKey key: String) {
        var storage = self.storage
        storage.removeValue(forKey: key)
        self.storage = storage
    }
    
    func save(userInfo: StoreKitUserInfo, forKey key: String) {
        var storage = self.storage
        storage[key] = userInfo.stringRepresentation
        self.storage = storage
    }
    
    func loadUserInfo<Result: StoreKitUserInfo>(forKey key: String) -> Result? {
        return storage[key].flatMap { Result(stringRepresentation: $0) }
    }
}
