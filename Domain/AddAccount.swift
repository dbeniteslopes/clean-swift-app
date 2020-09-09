import Foundation

public protocol AddAccount {
    func add(addAccountModel: AddAccountModel, completion: @escaping (Result<AccountModel, Error>) -> Void)
}

public struct AddAccountModel: Encodable {
    var name: String
    var email: String
    var password: String
    var passwordConfirmation: String
}
