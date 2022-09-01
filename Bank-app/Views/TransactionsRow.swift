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
    @State var logo: String = "apple-logo"
    @State var date: String = "30 de ago  2022"
    @State var company: String = "Apple"
    
    var body: some View {
        HStack {
            Image(logo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .padding(5)
            
            VStack(alignment: .leading) {
                Text(company)
                    .font(.headline)
                Text(date)
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
