//
//  TransactionsView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import SwiftUI

struct TransactionsView: View {
    var body: some View {
        VStack(spacing: -40) {
            TransactionsHeader()
            LazyVStack {
                ForEach(0..<10, id: \.self) {item in
                    TransactionsRow()
                }
            }
            .background(Color.white)
            .cornerRadius(20)
        }
        .padding(.horizontal)

    }
}

struct TransactionsView_Previews: PreviewProvider {
   
    static var previews: some View {
        TransactionsView()
            .previewLayout(.sizeThatFits)
    }
}
    
