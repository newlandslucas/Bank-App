//
//  HeaderProfile.swift
//  Bank-app
//
//  Created by Lucas Newlands on 04/09/22.
//

import SwiftUI

struct HeaderProfile: View {
    var body: some View {
        
        VStack() {
            HStack() {
                VStack(alignment: .leading, spacing: 15) {
                    HStack(spacing: 15) {
                        Button {
                            print("Clicou")
                        } label: {
                            ZStack {
                                Circle()
                                Text("LM")
                                .foregroundColor(.white)
                            .frame(width: 45, height: 45, alignment: .center)
                            }
                            .frame(width: 50, height: 50, alignment: .center)
                            .foregroundColor(.black.opacity(0.6))
                        }


                        
                        VStack(alignment: .leading) {
                            Text("Lucas Silveira")
                                .font(.system(size: 18, weight: .light, design: .rounded))
                                .fontWeight(.semibold)
                            Text("Newlands Machado")
                                .font(.system(size: 18, weight: .light, design: .rounded))
                                .fontWeight(.semibold)

                            
                        }
                    }
                    
                    Spacer()
                    
                    Text("Dados da conta corrente")
                        .foregroundColor(Color.black.opacity(0.7))
                    
                    HStack(spacing: 15) {
                        VStack{
                            Text("Banco")
                                .font(.system(size: 12))
                                .foregroundColor(Color.black.opacity(0.7))
                            Text("000")
                                .font(.system(size: 12))
                                .foregroundColor(Color.black.opacity(0.7))
                        }
                        VStack{
                            Text("Agência")
                                .font(.system(size: 12))
                                .foregroundColor(Color.black.opacity(0.7))
                            Text("000")
                                .font(.system(size: 12))
                                .foregroundColor(Color.black.opacity(0.7))
                        }
                        VStack{
                            Text("Conta")
                                .font(.system(size: 12))
                                .foregroundColor(Color.black.opacity(0.7))
                            Text("000000-0")
                                .font(.system(size: 12))
                                .foregroundColor(Color.black.opacity(0.7))
                        }
                        
                        Spacer()
                        
                        Button {
                            print("Clicou!")
                        } label: {
                            Image(systemName: "square.and.arrow.up")
                                .font(.system(size: 22))
                                .foregroundColor(.black)
                        }

                        
                    }
                }
                
                
            }
            .padding()
        }
        .frame(width: 360, height: 150, alignment: .leading)
        .padding()
        .background(Color("ColorGray"))
    }
}

struct HeaderProfile_Previews: PreviewProvider {
    static var previews: some View {
        HeaderProfile()
    }
}
