//
//  CardScreen.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
            
        VStack(spacing: 0) {
            HeaderView()
            Divider()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: -5) {
                   
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Saldo em conta")
                                .font(.system(size: 12, weight: .light, design: .rounded))
                            
                            HStack(alignment: .center, spacing: 0) {
                                Text("R$ ")
                                VStack {
                                    Text("0,00")
                                    
                                }

                            }
                            
                        }
                       
                        
                        Spacer()
                    }
                    .foregroundColor(.black)
                    .padding()
                    
                    HStack {
                        Text("Meus Cartões")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                        
                        Spacer()
                    }
                    .foregroundColor(.black)
                    .padding()
                    
                        CardList()
                    
                    
                    HStack {
                        Text("Transações")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                        
                        Spacer()
                    }
                    .foregroundColor(.black)
                    .padding()
                    
                    TransactionsView()
                }

            }
            .background(Color("ColorGray"))
            .preferredColorScheme(.dark)

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
