import Foundation

protocol AddAccount {
    func add(addAccountModel: AddAccountModel, completion: @escaping (Result<AccountModel, Error>) -> Void)
}

struct AddAccountModel: Model {
    var name: String
    var email: String
    var password: String
    var passwordConfirmation: String
}
