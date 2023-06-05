//
//  HeaderView.swift
//  PasswordManager
//
//  Created by Ian Pedeglorio on 2023-06-04.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let angle: Double
    let background: Color
    
    
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
                
            
            VStack{
                Text(title)
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
                    .bold()
                
                
            }
            .padding(.top,70)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y: -150)
            }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "My Password Vault", angle: 15, background: .yellow)
    }
}
