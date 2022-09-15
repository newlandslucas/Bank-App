//
//  OptionsCardLogin.swift
//  Bank-app
//
//  Created by Lucas Newlands on 14/09/22.
//

import SwiftUI

struct OptionsCardLogin: View {
    @State var imageName: String
    @State var title: String
    
    var body: some View {
        
        Button {
            print("Clicou!")
        } label: {
            VStack(alignment: .leading, spacing: 10) {
                Image(systemName: imageName)
                Text(title)
                    .font(.system(size: 12, weight: .light, design: .rounded))
            }
            .frame(width: 75, height: 50)
            .padding()
            .background(Color("DarkBlue"))
            .cornerRadius(5.0)
        }
        .foregroundColor(.white)

       

    }
}

struct OptionsCardLogin_Previews: PreviewProvider {
    static var previews: some View {
        OptionsCardLogin(imageName: "", title: "Pix")
    }
}
