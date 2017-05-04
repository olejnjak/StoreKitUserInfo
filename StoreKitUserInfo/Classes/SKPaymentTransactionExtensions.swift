//
//  File.swift
//  Pods
//
//  Created by Jakub Olejník on 04/05/2017.
//
//

import class StoreKit.SKPaymentTransaction

protocol PaymentTransactionProtocol {
    var transactionIdentifier: String? { get }
}

extension SKPaymentTransaction: PaymentTransactionProtocol { }

extension PaymentTransactionProtocol {
 
    func getUserInfo<Result: StoreKitUserInfo>() -> Result? {
        return transactionIdentifier.flatMap { StoreKitStore.loadUserInfo(forKey: $0) }
    }
    
    func setUserInfo(_ userInfo: StoreKitUserInfo?) {
        guard let transactionIdentifier = transactionIdentifier else { return }
        
        if let userInfo = userInfo {
            StoreKitStore.save(userInfo: userInfo, forKey: transactionIdentifier)
        }
        else {
            StoreKitStore.deleteUserInfo(forKey: transactionIdentifier)
        }
    }
}
