//
//  TransactionsHeader.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import Foundation
import SwiftUI

struct TransactionsHeader: View {
    var body: some View {
        HStack {
            Text("Enviar dinheiro")
                .font(.headline)
            Spacer()
            Image(systemName: "plus.circle.fill")
                .resizable()
                .frame(width: 25, height: 25)
            Text("Add destinatário")
                

        }
        .padding(20)
        .padding(.bottom, 40)
        .foregroundColor(.white)
        .background(Color.black)
        .cornerRadius(20)
        .offset(x: 0, y: 10)
    }
}
