//
//  User.swift
//  PasswordManager
//
//  Created by Ian Pedeglorio on 2023-06-04.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
