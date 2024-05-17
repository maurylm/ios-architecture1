//
//  NetworkService.swift
//  DesignPattern
//
//  Created by Andrés López Mayorga on 5/17/24.
//

import Foundation

final class NetworkService {
    static let shared = NetworkService()
    
    var user: User?
    
    private init() {}
    
    func login(email: String, password: String, completition: @escaping(Bool) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            if email == "mauricio.test@gmail.com" && password == "password123" {
                self?.user = User(firstname: "Mauricio", lastName: "Lopez", email: "mauricio.test@gmail.com", age: 38)
                completition(true)
            } else {
                self?.user = nil
                completition(false)
            }
        }
    }
    
    func getLoggedInUser() -> User {
        return user!
    }
}
