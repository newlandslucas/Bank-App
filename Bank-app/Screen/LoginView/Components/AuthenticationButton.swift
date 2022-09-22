//
//  AuthenticationButton.swift
//  Bank-app
//
//  Created by Lucas Newlands on 22/09/22.
//

import SwiftUI

struct AuthenticationButton: View {
    var body: some View {
        Text("Acessar")
            .fontWeight(.bold)
           .padding()
           .frame(width: 150, height: 50)
           .foregroundColor(.white)
           .background(Color.blue)
           .cornerRadius(12)
           .shadow(radius: 2)
    }
}

struct AuthenticationButton_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationButton()
    }
}



//Button {
//    
//} label: {
//
