import Foundation

public protocol StoreKitUserInfoData {
    var stringRepresentation: String { get }
    
    init?(stringRepresentation: String)
}

extension Int: StoreKitUserInfoData {
    public var stringRepresentation: String {
        return String(self)
    }
    
    public init?(stringRepresentation: String) {
        guard let int = Int(stringRepresentation) else { return nil }
        self = int
    }
}

extension String: StoreKitUserInfoData {
    public var stringRepresentation: String {
        return self
    }
    
    public init?(stringRepresentation: String) {
        self = stringRepresentation
    }
}
