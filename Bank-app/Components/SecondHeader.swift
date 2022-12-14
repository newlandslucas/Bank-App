//
//  SecondHeader.swift
//  Bank-app
//
//  Created by Lucas Newlands on 02/09/22.
//

import SwiftUI

struct SecondHeader: View {
    var body: some View {
        VStack(spacing: -15) {
            
            HStack(spacing: 15) {
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Shopping")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text("Sexta feira")
                        .fontWeight(.bold)
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                    Text("2 de Set de 2022")
                        .font(.system(size: 12))
                        .foregroundColor(.white)
                }
                .foregroundColor(.white)
                Spacer()
                
                Button {
                    print("Clicou!")
                } label: {
                    Image(systemName: "questionmark.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        
                }
                
                Button {
                    print("Clicou!")
                } label: {
                    Image(systemName: "message.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        
                }

                
            }
            .padding(.horizontal, 30)
            .frame(width: 400, height: 95)
            .background(Color("DarkBlue"))
        }      
        
        
    }
}

struct SecondHeader_Previews: PreviewProvider {
    static var previews: some View {
        SecondHeader()
    }
}
