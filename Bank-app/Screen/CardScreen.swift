//
//  CardScreen.swift
//  Bank-app
//
//  Created by Lucas Newlands on 02/09/22.
//

import SwiftUI

struct CardScreen: View {
    var body: some View {
        VStack(alignment: .leading) {
            SecondHeader()
            ScrollView(.vertical, showsIndicators: false) {
                
                Spacer()
            
                
                VStack(alignment: .leading) {
                    Text("Ofertas para você")
                        .fontWeight(.semibold)
                    
                    offersCard()
                    offersCard(imageLogo: "netflix-logo", title: "Netflix", subTitle: "", percentage: "10", percentageText: "desconto")
                    offersCard(imageLogo: "primevideo-logo", title: "Amazon Prime Video", subTitle:"", percentage: "40", percentageText: "desconto")
                }
                .padding()
                
                VStack(alignment: .leading) {
                    Text("Games")
                        .fontWeight(.semibold)
                    
                    offersCard(imageLogo: "xbox-logo", title: "Xbox", subTitle: "Desconto em jogos selecionados", percentage: "8", percentageText: "de desconto")
                    Divider()
                    offersCard(imageLogo: "apple-arcade", title: "Apple Arcade", subTitle: "Desconto na assinatura mensal", percentage: "20", percentageText: "de desconto")
                    Divider()
                    offersCard(imageLogo: "playstaion-logo", title: "Playstation", subTitle: "Desconto em jogos selecionados", percentage: "15", percentageText: "de desconto")
                }
                .padding()
                
                VStack(alignment: .leading) {
                    Text("Viagem")
                        .fontWeight(.semibold)
                    
                    offersCard(imageLogo: "gol-logo", title: "Gol Linhas Áereas", subTitle:  "Descontos especiais em trechos nacionais", percentage: "20", percentageText: "desconto")
                    Divider()
                    offersCard(imageLogo: "latam-logo", title: "Latam", subTitle: "Descontos especiais", percentage: "25", percentageText: "desconto")
                }
                .padding()
                
                
                Spacer()
            }
        }
    }
}

struct CardScreen_Previews: PreviewProvider {
    static var previews: some View {
        CardScreen()
    }
}
