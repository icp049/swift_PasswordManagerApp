//
//  MainViewViewModel.swift
//  PasswordManager
//
//  Created by Ian Pedeglorio on 2023-06-04.
//
import FirebaseAuth
import Foundation

class MainViewViewModel: ObservableObject{
    
    
    
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    init() {
        self.handler = Auth.auth().addStateDidChangeListener{ [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""}
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
        
    }
    
}
