//
//  HomeViewModel.swift
//  DesignPattern
//
//  Created by Andrés López Mayorga on 5/17/24.
//

import Foundation

final class HomeViewModel {
    var welcomeMessage: ObservableObject<String?> = ObservableObject(nil)
    
    func getLoggedInUser() {
        let user = NetworkService.shared.getLoggedInUser()
        self.welcomeMessage.value = "Hello \(user.firstname) \(user.lastName)"
    }
}
