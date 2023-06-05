//
//  HeaderView.swift
//  PasswordManager
//
//  Created by Ian Pedeglorio on 2023-06-04.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.yellow)
                .rotationEffect(Angle(degrees: 15))
                
            
            VStack{
                Text("My Password Vault")
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
                    .bold()
                
                
            }
            .padding(.top,40)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -100)
            }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
