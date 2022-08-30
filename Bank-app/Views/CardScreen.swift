//
//  CardScreen.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import SwiftUI

struct CardScreen: View {
    var body: some View {
            
        ScrollView(.vertical, showsIndicators: false) {
           
            VStack(spacing: -5) {
                HeaderView()
                
                HStack {
                    Text("Meus Cartões")
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                    
                    Spacer()
                }
                .padding()
                CardList()
                
                HStack {
                    Text("Transações")
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                    
                    Spacer()
                }
                .padding()
                TransactionsView()
            }

        }
    }
}

struct CardScreen_Previews: PreviewProvider {
    static var previews: some View {
        CardScreen()
    }
}
