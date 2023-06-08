//
//  PasswordItemView.swift
//  PasswordManager
//
//  Created by Ian Pedeglorio on 2023-06-04.
//

import SwiftUI

struct PasswordItemView: View {
    let item: PasswordItem
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(item.title)
                    .font(.body)
                    .bold()
                Text(item.user)
                Text(item.pass)
            }
            
            Spacer()
            
            
        }
    }
    
    struct PasswordItemView_Previews: PreviewProvider {
        static var previews: some View {
            PasswordItemView(item: .init(
                id: "123",
                title: "facebook",
                user: "ianpepe",
                pass: "hahaha123",
                isDone: true
                
            ))
        }
    }
}
