//
//  LoginView.swift
//  PasswordManager
//
//  Created by Ian Pedeglorio on 2023-06-04.
//

import SwiftUI

struct LoginView: View {
    
    
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        NavigationView{
            VStack{
                //header
                HeaderView()
                
                //loginform
                Form{
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button{
                        //attempt login
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.black)
                            
                            Text("Login")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                }
                
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
