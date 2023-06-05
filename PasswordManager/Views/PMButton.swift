//
//  PMButton.swift
//  PasswordManager
//
//  Created by Ian Pedeglorio on 2023-06-05.
//

import SwiftUI

struct PMButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    
    
    var body: some View {
        
        
        Button{
            action()
            
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
        
    }


struct PMButton_Previews: PreviewProvider {
    static var previews: some View {
        PMButton(title: "Login", background:.black){
        }
    }
}
