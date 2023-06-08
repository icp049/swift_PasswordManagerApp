//
//  PasswordView.swift
//  PasswordManager
//
//  Created by Ian Pedeglorio on 2023-06-04.
//

import SwiftUI
import FirebaseFirestoreSwift
struct PasswordView: View {
    
    
    
    @StateObject var  viewModel: PasswordViewViewModel
    @FirestoreQuery var items: [PasswordItem]
    
    private let userId: String
    
    init(userId:String){
        self.userId = userId
        
        //track the user id tracks
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/passwords")
    
    
        self._viewModel = StateObject(wrappedValue:PasswordViewViewModel(userId:userId))
    
    
    
}
    
    
    var body: some View {
        NavigationView{
            VStack{
                
                List(items) {item in
                    PasswordItemView(item: item)
                        .swipeActions {
                            Button("Delete"){
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                            
                            
                        }
                   
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Passwords")
            .toolbar {
                Button{
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView){
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
        
      }
    }


struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView(userId: "")
    }
}
