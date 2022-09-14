//
//  CreditCardView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 12/09/22.
//

import SwiftUI

struct CreditCardView: View {
    let name: String
    let cardNumber: String
    let expires: String
    let Title: String
    let subtTitle: String
    let ColorCard: Color
    let ColorText: Color
        
    var body: some View {
       
                
        Button {
            print("Clicou!")
        } label: {
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Image(systemName: "dot.radiowaves.forward")
                            .foregroundColor(ColorText)
                            .font(.system(size: 24))
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing, spacing: 1) {
                        Text(Title)
                            .foregroundColor(ColorText)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                        
                        Text(subtTitle)
                            .foregroundColor(ColorText)
                            .fontWeight(.bold)
                            .font(.system(size: 12))
                    }

                }
                
                Spacer()
                
            
                
                Spacer()
                
                HStack {
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 10) {
                            
                            Text(name)
                                .font(.system(size: 14))
                                .fontWeight(.bold)
                                .foregroundColor(ColorText)
                            
                            Text(cardNumber)
                                .foregroundColor(ColorText)
                                .font(.system(size: 14))
                        }
                        
                        Spacer()
                        
                        HStack {

                            Text("EXP DATE: ")
                                .foregroundColor(.gray)
                                .font(.system(size: 10))
                            
                            Text(expires)
                                .foregroundColor(ColorText)
                                .font(.system(size: 14))
                            
                        }
                        
                    }
                    
                }
                
                
            }
            .frame(width: 225, height: 125)
            .padding()
            .background(ColorCard)
            .cornerRadius(10)
        }


    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView(name: "Lucas Newlands", cardNumber: "...0000", expires: "01/28", Title: "MasterCard", subtTitle: "Black", ColorCard: Color.black, ColorText: Color.white)
    }
}
