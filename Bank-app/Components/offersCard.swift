//
//  offersCard.swift
//  Bank-app
//
//  Created by Lucas Newlands on 02/09/22.
//

import SwiftUI

struct offersCard: View {
    @State var imageLogo: String = "spotify-logo"
    @State var title: String = "Spotify"
    @State var subTitle: String = "Valído para todas os planos"
    @State var percentage: String = "15%"
    @State var percentageText: String = "desconto"
    
    var body: some View {
        
        HStack {
            Image(imageLogo)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(30)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
                Text(subTitle)
                    .font(.system(size: 12, weight: .light, design: .rounded))
                    .foregroundColor(.black)
            }
            Spacer()
            
            VStack(alignment: .trailing) {
                Text("\(percentage)% de")
                    .font(.system(size: 12, weight: .regular, design: .rounded))
                    .foregroundColor(.black)

                Text(percentageText)
                    .font(.system(size: 12, weight: .regular, design: .rounded))
                    .foregroundColor(.black)

            }
            
        }
    }
    
}

struct offersCard_Previews: PreviewProvider {
    static var previews: some View {
        offersCard()
    }
}
