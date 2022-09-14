//
//  ProfileOptions.swift
//  Bank-app
//
//  Created by Lucas Newlands on 14/09/22.
//

import SwiftUI

struct ProfileOptions: View {
    @State var text: String = "teste"
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Text(text)
                    .font(.system(size: 14, weight: .light, design: .rounded))
                Spacer()
                
                Button {
                    print("clicou")
                } label: {
                    Image(systemName: "arrow.right")
                }

            }
            .padding()
            .frame(width: 350, height: 50)
            HStack{}
                .frame(width: 350, height: 0.3)
                .background(.black.opacity(0.3))
        }
        .padding()
        
      
    }
}

struct ProfileOptions_Previews: PreviewProvider {
    static var previews: some View {
        ProfileOptions()
    }
}
