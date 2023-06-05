//
//  LoginView.swift
//  PasswordManager
//
//  Created by Ian Pedeglorio on 2023-06-04.
//

import SwiftUI

struct LoginView: View {
    
    
@StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //header
                HeaderView(title: "My Password Vault", angle: 15, background: .yellow)
                
                
             
                
                //loginform
                Form{
                    
                    if  !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    PMButton(title: "Login", background:.black){
                        viewModel.login()
                    }
                    .padding()
                }
                .offset (y: -50)
                    
                    //button
                    
                    
                    //create account
                    
                    VStack{
                        
                        Text("Don't Have an Account?")
                        NavigationLink("Create an Account", destination: RegisterView())
                    }
                    .padding(.bottom, 50)
                    
                    Spacer()
                }
            }
        }
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }

