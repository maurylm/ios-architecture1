//
//  LoginViewModel.swift
//  DesignPattern
//
//  Created by Andrés López Mayorga on 5/17/24.
//

import Foundation

final class LoginViewModel {
    
    var error: ObservableObject<String?> = ObservableObject(nil)
    
    func login(email: String, password: String) {
        NetworkService.shared.login(email: email, password: password) {[weak self] success in
            self?.error.value = success ? nil : "Invalid Credentials!!!"
        }
    }
}
