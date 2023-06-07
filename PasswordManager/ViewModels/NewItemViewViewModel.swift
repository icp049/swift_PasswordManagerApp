//
//  NewItemViewViewModel.swift
//  PasswordManager
//
//  Created by Ian Pedeglorio on 2023-06-04.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation


class NewItemViewViewModel: ObservableObject{
    
    @Published var title = ""
    @Published var password = ""
    @Published var user = ""
    @Published var showAlert = false
    
    
    init() {}
    
    func save(){
        guard canSave else {
            return
        }
        
        
        //get current uiser id
        guard let uId = Auth.auth().currentUser?.uid else{
            return
        }
        
        
        //create model
        let newId = UUID().uuidString
        let newItem = PasswordItem(id: newId, title: title, user:user, pass: password, isDone: false)
        
        
        //save model to database
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uId)
            .collection("passwords")
            .document(newId)
            .setData(newItem.asDictionary())
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty,
              !user.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        
        return true
        
        
    }
    
    
    
    
}
