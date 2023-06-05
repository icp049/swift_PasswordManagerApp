//
//  PasswordManagerApp.swift
//  PasswordManager
//
//  Created by Ian Pedeglorio on 2023-06-04.
//
import FirebaseCore
import SwiftUI

@main
struct PasswordManagerApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
