//
//  CardList.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import Foundation
import SwiftUI

struct CardList: View {
   
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                CardView(isActive: true)
                CardView(isActive: false, imageLogo: "mastercard-logo", balance: "5.000,00")
                    
                }
            .shadow(color: .black.opacity(0.2), radius: 5, x: 5, y: 5)
            }

        .padding(20)
        
    }
}

struct CardList_Previews: PreviewProvider {
    static var previews: some View {
        CardList()
    }
}
