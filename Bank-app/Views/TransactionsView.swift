//
//  TransactionsView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import SwiftUI

struct TransactionsView: View {
    var body: some View {
        LazyVStack {
            ForEach(0..<10, id: \.self) {item in
                TransactionRow()
            }
        }
    }
}

struct TransactionRow: View {
    var body: some View {
        HStack {
            Image("apple-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .padding(5)
            
            
            VStack(alignment: .leading) {
                Text("Apple")
                    .font(.headline)
                Text("30 Ago 2022 15:45")
                    .font(.caption)
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            Text("- R$250,00")
                .font(.headline)
        }
        .padding(8)
    }
}

struct TransactionsView_Previews: PreviewProvider {
   
    static var previews: some View {
        TransactionsView()
            .previewLayout(.sizeThatFits)
    }
}
    
