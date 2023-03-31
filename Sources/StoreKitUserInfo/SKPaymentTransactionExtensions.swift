import class StoreKit.SKPaymentTransaction

public protocol PaymentTransactionProtocol {
    var transactionIdentifier: String? { get }
}

extension SKPaymentTransaction: PaymentTransactionProtocol { }

extension PaymentTransactionProtocol {
    public func getUserInfo<Result: StoreKitUserInfo>() -> Result? {
        return transactionIdentifier.flatMap { StoreKitStore.loadUserInfo(forKey: $0) }
    }
    
    public func setUserInfo(_ userInfo: StoreKitUserInfo?) {
        guard let transactionIdentifier = transactionIdentifier else { return }
        
        if let userInfo = userInfo {
            StoreKitStore.save(userInfo: userInfo, forKey: transactionIdentifier)
        }
        else {
            StoreKitStore.deleteUserInfo(forKey: transactionIdentifier)
        }
    }
}
