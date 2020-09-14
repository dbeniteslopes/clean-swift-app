import Foundation
import Domain

func makeAccountModel() -> AccountModel {
    return AccountModel(id: "Id", name: "Nome", email: "email@email.com", password: "password")
}
