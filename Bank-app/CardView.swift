//
//  CardView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import SwiftUI

struct CardView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Spacer()
            HStack {
                Spacer()
                Image("VISA-Logo") // logo
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 15)
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
                Text("17.370,52")
                    .font(.caption)
                    .foregroundColor(isActive ? .white : .black)
                
            }
                .padding(.bottom)
            Text("**** **** **** 3022")
                .foregroundColor(isActive ? .white : .black)
                .font(.caption)
        }
        .frame(width: 150, height: 150)
        .padding(8)
        .background(Color(isActive ? .black : .white))
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(isActive: true)
            .previewLayout(.sizeThatFits)
        CardView(isActive: false)
            .previewLayout(.sizeThatFits)
    }
}
