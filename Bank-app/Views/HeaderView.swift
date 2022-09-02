//
//  HeaderView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Bem vindo, de volta")
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                    Text("Lucas Newlands")
                        .font(.system(size: 26, weight: .light, design: .rounded))
                }
                
                Spacer()
                
                Image("userProfile")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
                
            }
            
            VStack {}
            .frame(width: 350, height: 0.5)
            .background(Color.black)
        }
        .shadow(color: .black, radius: 0, x: 0, y: 0)

        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
