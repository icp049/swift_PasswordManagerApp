//
//  RegisterView.swift
//  PasswordManager
//
//  Created by Ian Pedeglorio on 2023-06-04.
//

import SwiftUI

struct RegisterView: View {
 
    
    @StateObject var viewModel = RegisterViewViewmodel()
    
    
    
    
    
    var body: some View {
        VStack{
            HeaderView(title: "Create Account", angle: 15, background: .blue)
            
            Form{
                TextField("Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                PMButton(title: "Register", background:.orange){
                    viewModel.register()
                }
                .padding()
                
                
             
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
    
    struct RegisterView_Previews: PreviewProvider {
        static var previews: some View {
            RegisterView()
        }
    }
    
}
