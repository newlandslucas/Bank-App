//
//  TripCard.swift
//  Bank-app
//
//  Created by Lucas Newlands on 02/09/22.
//

import SwiftUI

struct TripCard: View {
    @State var logo: String = "latam2-logo"
    @State var percentage: String = "15%"
    @State var title: String = "Latam"
    var body: some View {
        
        Button {
            print("Clicou")
        } label: {
            VStack(alignment: .leading, spacing: 2) {
                Image(logo)
                    .resizable()
                    .cornerRadius(15)
                    .frame(width: 180, height: 100)
                
                Spacer()
                
                Text(title)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                
                    .font(.system(size: 16))
                Text("\(percentage) de desconto")
                    .foregroundColor(.black)
                    .font(.system(size: 14))
                
                Text("Em trechos selecionados")
                    .foregroundColor(.black)
                    .font(.system(size: 14))
                
                Spacer()
            }
            .frame(width: 180, height: 200)
            .cornerRadius(15)
        }

    }
}

struct TripCard_Previews: PreviewProvider {
    static var previews: some View {
        TripCard()
    }
}
