//
//  HeaderView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        VStack() {
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Bem vindo, de volta")
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                    Text("Lucas Newlands")
                        .font(.system(size: 24, weight: .regular, design: .monospaced))
                }
                .foregroundColor(.white)
                
                Spacer()
                
            }
        }
        
        .padding()
        .padding(.horizontal, 5)
        .background(Color("DarkBlue"))
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
