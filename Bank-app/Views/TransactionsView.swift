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
                TransactionsRow()
                TransactionsRow(value: "17,90", logo: "spotify-logo", date: "1 de set 2022", company: "Spotify")
                TransactionsRow(value: "180,00", logo: "shell-logo", date: "1 de set 2022", company: "Shell Box")
                TransactionsRow(value: "35,00", logo: "netflix-logo", date: "04 de set 2022", company: "Netflix")
                TransactionsRow(value: "18,00", logo: "primevideo-logo", date: "04 de set 2022", company: "Amazon Prime Video")

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
    
