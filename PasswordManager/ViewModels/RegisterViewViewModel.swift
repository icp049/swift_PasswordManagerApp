//
//  RegisterViewViewModel.swift
//  PasswordManager
//
//  Created by Ian Pedeglorio on 2023-06-04.
//
import FirebaseAuth
import Foundation

class RegisterViewViewmodel: ObservableObject{
    
    
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    
    init() {}
    
    func register(){
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            <#code#>
            guard let userId = result?.user.uid else{
                return
            }
            
            
        }
    }
    
    private func insertUserRecord(id: String)
        
        private func validate() -> Bool {
            
            guard !name.trimmingCharacters(in: whitespaces).isEmpty,
                  !email.trimmingCharacters(in: whitespaces).isEmpty,
                  !password.trimmingCharacters(in: whitespaces).isEmpty else {
                return false
            }
            
            guard email.contains("@") && email.contains(".") else {
                return false
            }
            
            guard password.count >= 6 else{
                return false
            }
            
            
            return true
        
    }
    
  
    
}
