import Foundation

protocol Model: Encodable { }

extension Model {
    
    func toData() -> Data? {
        return try? JSONEncoder().encode(self)
    }
}
