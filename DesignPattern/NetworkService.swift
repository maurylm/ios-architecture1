//
//  NetworkService.swift
//  DesignPattern
//
//  Created by Andrés López Mayorga on 5/17/24.
//

import Foundation

class NetworkService {
    static let shared = NetworkService()
    private init() {}
    
    private var user: User?
    
    func login(email: String, password: String, completition: @escaping(Bool) -> Void) {
        DispatchQueue.global().async {
            sleep(2)
            DispatchQueue.main.async {
                if email == "mauriciolopez@gmail.com" && password == "password123" {
                    self.user = User(firstName: "Mauricio", lastName: "Lopez", email: "mauriciolopez@gmail.com", age: 38, location: Location(lat: -17.393747, lng: -66.156740))
                    completition(true)
                } else {
                    completition(false)
                }
            }
        }
    }
    
    func getLoggedInUser() -> User? {
        return user
    }
    
}
