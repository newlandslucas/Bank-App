//
//  TransactionsRow.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import Foundation
import SwiftUI


struct TransactionsRow: View {
    @State var value: String = "250,00"
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
                Text("30 de ago 2022 19:20")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            Spacer()
            Text("- \(value) R$")
                .font(.headline)
        }
        .padding()
    }
}

struct TransactionsRow_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsRow()
    }
}
