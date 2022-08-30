//
//  CardList.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import Foundation
import SwiftUI

struct CardList: View {
    @State var isActive: Bool = false
    @State var imageLogo: String = "VISA-Logo"
    @State var balance: String = "17.000,00"
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            Spacer()
            HStack {
                Spacer()
                Image(imageLogo) // logo
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 25)
                    .padding(3)
                    .foregroundColor(isActive ? .white : .black)
            }
            
            Spacer()
            Text("Saldo")
                .foregroundColor(isActive ? .white : .black)
                .font(.caption)
            
            HStack(alignment: .center) {
                Text("R$")
                    .font(.caption)
                    .foregroundColor(isActive ? .white : .black)
                Text(balance)
                    .font(.headline)
                    .fontWeight(.heavy)
                    .foregroundColor(isActive ? .white : .black)
                
            }
                .padding(.bottom, 5)
            Spacer()
            Text("**** **** **** 3022")
                .foregroundColor(isActive ? .white : .black)
                .font(.caption)
                .padding(.bottom)
        }
        .frame(width: 130, height: 170)
        .padding(8)
        .background(Color(isActive ? .black : .white))
        .cornerRadius(20)
    }
}
