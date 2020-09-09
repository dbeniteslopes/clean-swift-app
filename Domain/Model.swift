import Foundation

public protocol Model: Encodable { }

extension Model {
    
    public func toData() -> Data? {
        return try? JSONEncoder().encode(self)
    }
}
