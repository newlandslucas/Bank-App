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
                                    .foregroundColor(.white.opacity(0.8))
                                Text("LM")
                                .foregroundColor(.black)
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
                        .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    Text("Dados da conta corrente")
                        .foregroundColor(Color.gray)
                    
                    HStack(spacing: 15) {
                        VStack{
                            Text("Banco")
                                .font(.system(size: 12))
                                .foregroundColor(Color.white.opacity(0.7))
                            Text("000")
                                .font(.system(size: 12))
                                .foregroundColor(Color.white.opacity(0.7))
                        }
                        VStack{
                            Text("Ag??ncia")
                                .font(.system(size: 12))
                                .foregroundColor(Color.white.opacity(0.7))
                            Text("000")
                                .font(.system(size: 12))
                                .foregroundColor(Color.white.opacity(0.7))
                        }
                        VStack{
                            Text("Conta")
                                .font(.system(size: 12))
                                .foregroundColor(Color.white.opacity(0.7))
                            Text("000000-0")
                                .font(.system(size: 12))
                                .foregroundColor(Color.white.opacity(0.7))
                        }
                        
                        Spacer()
                        
                        Button {
                            print("Clicou!")
                        } label: {
                            Image(systemName: "square.and.arrow.up")
                                .font(.system(size: 22))
                                .foregroundColor(.white)
                        }

                        
                    }
                }
                
                
            }
            .padding()
        }
        .frame(width: 360, height: 150, alignment: .leading)
        .padding()
        .background(Color("DarkBlue"))
    }
}

struct HeaderProfile_Previews: PreviewProvider {
    static var previews: some View {
        HeaderProfile()
    }
}
