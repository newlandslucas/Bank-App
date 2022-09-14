//
//  CardScreen.swift
//  Bank-app
//
//  Created by Lucas Newlands on 12/09/22.
//

import SwiftUI

struct CardScreen: View {
    var body: some View {
        VStack(spacing: -1) {
            HStack {
                Text("Cartões")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                
                Button {
                    print("Clicou!")
                } label: {
                    Image(systemName: "gearshape")
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                }

                
            }
            // MARK: HEADER
            .padding()
            .background(Color.white)
            
            //MARK: DIVIDER
            
            ScrollView(.vertical, showsIndicators: false) {
              
                VStack(spacing: 25) {
                    HStack {
                        Text("Meus Cartões")
                            .font(.title3)
                            .fontWeight(.medium)
                        Spacer()
                }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack {
                            CreditCardView(name: "Lucas Newlands", cardNumber: "...0000", expires: "01/28", Title: "MasterCard", subtTitle: "Black", ColorCard: Color.white, ColorText: Color.black)
                            
                            CreditCardView(name: "Lucas Newlands", cardNumber: "...8888", expires: "01/28", Title: "Visa", subtTitle: "Infinite", ColorCard: Color.black, ColorText: Color.white)
                            
                            CreditCardView(name: "Lucas Newlands", cardNumber: "...9999", expires: "01/28", Title: "American Express", subtTitle: "", ColorCard: Color("AmericanExpressBlue"), ColorText: .white )
                        }

                    }
                    .shadow(color: .black.opacity(0.2), radius: 5, x: 5, y: 5)
                    
                    //MARK: Cards View
                    
                    HStack {
                        Text("Opções")
                            .font(.title3)
                            .fontWeight(.medium)
                        Spacer()
                        
                    }
                    
                    VStack(alignment: .leading) {
                        HStack {
                            CardsOptions(imageName: "applelogo", title: "Apple Pay")
                            CardsOptions(imageName: "plus", title: "Pedir cartão")
                            
                            Spacer()
                        }
                        .shadow(color: .black.opacity(0.2), radius: 5, x: 5, y: 5)
                        
                        
                        
                    }
                 
                    
                    Spacer()
                }
                .padding()
                
            }
            
            Spacer()
        }
        .background(Color("ColorGray"))
        
    }
}

struct CardScreen_Previews: PreviewProvider {
    static var previews: some View {
        CardScreen()
    }
}
