//
//  ProfileView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 04/09/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        
        VStack(spacing: -15) {
            HStack(spacing: 35) {
                Text("Meu Perfil")
                    .font(.system(size: 18, weight: .regular, design: .rounded))
                    .padding()
                Spacer()
                
                Button {
                    print("Clicou")
                } label: {
                    Image(systemName: "rectangle.portrait.and.arrow.right")
                        .font(.system(size: 18))
                        .foregroundColor(Color.black)
                }
            }
            .padding()
            .background(Color("ColorGray"))
            .frame(width: 400)
            ScrollView(.vertical, showsIndicators: false) {

                HeaderProfile()
            }
            .ignoresSafeArea()
            .frame(width: 400)
        .background(Color.white)
        }
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
