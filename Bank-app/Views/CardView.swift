//
//  CardView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import SwiftUI

struct CardView: View {
    @State var isActive: Bool = false
    @State var imageLogo: String = "VISA-Logo"
    @State var balance: String = "17.000,00"
    
    var body: some View {
        
        Button {
            print("Clicou")
        } label: {
            VStack(alignment: .leading, spacing: 5) {
                Spacer()
                HStack {
                    Spacer()
                    
                 Image(imageLogo)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 35)
                        .padding(8)
                        .cornerRadius(10)

                }
                
                Spacer()
                Text("Fatura")
                    .foregroundColor(isActive ? .white : .black)
                    .font(.caption)
                
                HStack(alignment: .center) {
                    Text("R$")
                        .font(.caption)
                        .foregroundColor(isActive ? .white : .black)
                    Text(balance)
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(isActive ? .white : .black)
                    
                }
                    .padding(.bottom, 5)
                Spacer()
                Text("**** **** **** 3022")
                    .foregroundColor(isActive ? .white : .black)
                    .font(.caption)
                    .padding(.bottom)
            }
            .frame(width: 130, height: 170)
            .padding(8)
            .background(Color(isActive ? .black : .white))
            .cornerRadius(20)
        }

    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(isActive: true)
            .previewLayout(.sizeThatFits)
        CardView(isActive: false, imageLogo: "mastercard-logo", balance: "5.000,00")
            .previewLayout(.sizeThatFits)
        CardView(isActive: false, imageLogo: "americanexpress-logo", balance: "5.000,00")
            .previewLayout(.sizeThatFits)
    }
}
