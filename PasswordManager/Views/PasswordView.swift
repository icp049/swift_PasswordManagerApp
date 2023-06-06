//
//  PasswordView.swift
//  PasswordManager
//
//  Created by Ian Pedeglorio on 2023-06-04.
//

import SwiftUI

struct PasswordView: View {
    
    
    
    @StateObject var  viewModel = PasswordViewViewModel()
    @Binding var newItemPresented: Bool
    
    private let userId: String
    
    init(userId:String ){
        self.userId = userId
        
    }
    
    
    
    var body: some View {
        NavigationView{
            VStack{
                
            }
            .navigationTitle("Passwords")
            .toolbar {
                Button{
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView) {
                NewItemView(newItemPresented:$viewModel.showingNewItemView)
            }
        }
        
        
    }
}

struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView(userId: "")
    }
}
