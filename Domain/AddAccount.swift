import Foundation

protocol AddAccount {
    func add(addAccountModel: AddAccountModel, completion: @escaping (Result<AccountModel, Error>) -> Void)
}

public struct AddAccountModel: Model {
    var name: String
    var email: String
    var password: String
    var passwordConfirmation: String
    
    init(
        name: String,
        email: String,
        password: String,
        passwordConfirmation: String) {
        self.name = name
        self.email = email
        self.password = password
        self.passwordConfirmation = passwordConfirmation
    }
}
