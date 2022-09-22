//
//  CardScreen.swift
//  Bank-app
//
//  Created by Lucas Newlands on 12/09/22.
//

import SwiftUI
import Charts

struct CardsView: View {
    var body: some View {
        VStack(spacing: -1) {
            HStack {
                Text("Cartões")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
                
                Button {
                    print("Clicou!")
                } label: {
                    Image(systemName: "gearshape")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                }

                
            }
            // MARK: HEADER
            .padding()
            .background(Color("DarkBlue"))
            
            //MARK: DIVIDER
            
            ScrollView(.vertical, showsIndicators: false) {
              
                VStack(spacing: 25) {
                    HStack {
                        Text("Meus Cartões")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundColor(.black)
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
                            .foregroundColor(.black)
                        Spacer()
                        
                    }
                    
                    //MARK: Options 1
                    VStack(alignment: .leading) {
                        HStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    CardsOptions(imageName: "applelogo", title: "Apple Pay")
                                    CardsOptions(imageName: "plus", title: "Pedir cartão")
                                    CardsOptions(imageName: "", title: "Ajustar limite")
                                }
                            }
                            
                            Spacer()
                        }
                        .shadow(color: .black.opacity(0.2), radius: 5, x: 5, y: 5)
                        
                        //MARK: Options
                        HStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack{
                                    CardsOptions(imageName: "book", title: "Faturas")
                                    CardsOptions(imageName: "divide.circle", title: "Parcelar fatura")
                                    CardsOptions(imageName: "arrowtriangle.down", title: "Mais opções")
                                }
                            }
                            
                            
                            Spacer()
                        }
                        .shadow(color: .black.opacity(0.2), radius: 5, x: 5, y: 5)
                        
                        
                        HStack {
                            Text("Histórico de Gastos")
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundColor(.black)
                            Spacer()
                        }
                        .padding()
                        
                        VStack {
                            Chart(data: [0.1, 0.3, 0.2, 0.5, 0.4, 0.9, 0.1])
                                .chartStyle(
                                    LineChartStyle(.quadCurve, lineColor: .blue, lineWidth: 1.5)
                                )
                        }
                        .background(Color.white)
                        .frame(width: 330, height: 150)
                        .cornerRadius(8)
                        .shadow(color: .black.opacity(0.2), radius: 5, x: 5, y: 5)
                        Spacer()
                        
                        
                    }
                 
                    
                    Spacer()
                }
                .padding()
                
                
            }
            

        }
        .background(Color("ColorGray"))
        
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
