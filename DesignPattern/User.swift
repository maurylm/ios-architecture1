//
//  User.swift
//  DesignPattern
//
//  Created by Andrés López Mayorga on 5/17/24.
//

import Foundation

struct User {
    let firstName, lastName, email: String
    let age: Int
    let location: Location
}

struct Location {
    let lat: Double
    let lng: Double
}
