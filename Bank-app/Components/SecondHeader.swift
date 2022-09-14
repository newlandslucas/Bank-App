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
            
            HStack {
                Text("Shopping")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            
            HStack(spacing: 15) {
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Sexta feira")
                        .fontWeight(.bold)
                        .font(.system(size: 14))
                        .foregroundColor(.black)
                    Text("2 de Set de 2022")
                        .font(.system(size: 12))
                        .foregroundColor(.black)
                }
                .foregroundColor(.white)
                Spacer()
                
                Button {
                    print("Clicou!")
                } label: {
                    Image(systemName: "questionmark.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                        
                }
                
                Button {
                    print("Clicou!")
                } label: {
                    Image(systemName: "message.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                        
                }

                
            }
            .padding(.horizontal, 30)
            .frame(width: 400, height: 95)
            .background(Color.white)
        }      
        
        
    }
}

struct SecondHeader_Previews: PreviewProvider {
    static var previews: some View {
        SecondHeader()
    }
}
