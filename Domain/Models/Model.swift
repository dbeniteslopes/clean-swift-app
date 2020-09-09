import Foundation

public protocol Model: Codable, Equatable { }

extension Model {
    
    public func toData() -> Data? {
        return try? JSONEncoder().encode(self)
    }
}
