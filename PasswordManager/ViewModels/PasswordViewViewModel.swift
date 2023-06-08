//
//  PasswordViewViewModel.swift
//  PasswordManager
//
//  Created by Ian Pedeglorio on 2023-06-04.
//
import FirebaseFirestore
import Foundation

class PasswordViewViewModel: ObservableObject{
    
    
    @Published  var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    
    func delete(id: String){
        
        let db = Firestore.firestore()
        
        
        db.collection("users")
            .document(userId)
            .collection("passwords")
            .document(id)
            .delete()
    }
    
    
        
    
}
