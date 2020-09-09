import Foundation
import Domain

final class RemoteAddAccount: AddAccount {
    
    private let url: URL
    private let httpClient: HttpPostClient
    
    init(url: URL, httpClient: HttpPostClient) {
        self.url = url
        self.httpClient = httpClient
    }
    
    func add(addAccountModel: AddAccountModel, completion: @escaping (Result<AccountModel, DomainError>) -> Void) {
        httpClient.post(to: url, with: addAccountModel.toData()) { result in
            switch result {
            case .success(let data):
                guard let accountModel: AccountModel = data.toModel() else {
                    completion(.failure(.unexpected))
                    return
                }
                
                completion(.success(accountModel))
            case .failure: completion(.failure(.unexpected))
            }
        }
    }
}
