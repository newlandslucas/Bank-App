//
//  CardsOptions.swift
//  Bank-app
//
//  Created by Lucas Newlands on 13/09/22.
//

import SwiftUI

struct CardsOptions: View {
    @State var imageName: String
    @State var title: String
    
    var body: some View {
        
        Button {
            print("Clicou!")
        } label: {
            VStack(alignment: .leading, spacing: 10) {
                Image(systemName: imageName)
                Text(title)
                    .font(.system(size: 12, weight: .light, design: .rounded))
            }
            .frame(width: 75, height: 50)
            .padding()
            .background(Color.white)
            .cornerRadius(5.0)
        }
        .foregroundColor(.black)

       

    }
}

struct CardsOptions_Previews: PreviewProvider {
    static var previews: some View {
        CardsOptions(imageName: "circle", title: "Crédito pessoal")
    }
}
