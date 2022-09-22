//
//  CardScreen.swift
//  Bank-app
//
//  Created by Lucas Newlands on 02/09/22.
//

import SwiftUI

struct ShopView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            SecondHeader()
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 15) {
                    VStack(alignment: .leading) {
                        Text("Ofertas para você")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                        
                        offersCard()
                        Divider()
                        offersCard(imageLogo: "netflix-logo", title: "Netflix", subTitle: "", percentage: "10", percentageText: "desconto")
                        Divider()
                        offersCard(imageLogo: "primevideo-logo", title: "Amazon Prime Video", subTitle:"", percentage: "40", percentageText: "desconto")
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("Games")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                        
                        offersCard(imageLogo: "xbox-logo", title: "Xbox", subTitle: "Desconto em jogos selecionados", percentage: "8", percentageText: "de desconto")
                        Divider()
                        offersCard(imageLogo: "apple-arcade", title: "Apple Arcade", subTitle: "Desconto na assinatura mensal", percentage: "20", percentageText: "de desconto")
                        Divider()
                        offersCard(imageLogo: "playstaion-logo", title: "Playstation", subTitle: "Desconto em jogos selecionados", percentage: "15", percentageText: "de desconto")
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("Viagens")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                TripCard()
                                TripCard(logo: "gol2-logo", percentage: "20%", title: "Gol")
                            }
                          
                        }
                    }
                }
            }
            .padding()
            .background(Color("ColorGray"))
            .preferredColorScheme(.light)

        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
