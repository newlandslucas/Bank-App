//
//  LoginView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 14/09/22.
//

import SwiftUI

struct LoginView: View {
    @State private var showModal: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("BANK APP")
                .font(.system(size: 16, weight: .bold, design: .monospaced))
                .foregroundColor(.white)
                .padding()
                .padding(.vertical, 45)
            
            Spacer()
            
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading, spacing: 25) {
                        Text("Bem Vindo!")
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                            .foregroundColor(.white)
                        
                        Text("Um banco feito para mudar a forma como você lida com o seu dinheiro.")
                            .font(.system(size: 16, weight: .regular, design: .rounded))
                            .foregroundColor(.white)
                    }
                    
     
                }
                .padding()
                

                
                VStack(alignment: .leading, spacing: 5) {
                    Button {
                       showModal = true
                    } label: {
                        Text("Entrar")
                            .foregroundColor(Color.black)
                           
                    }
                    .frame(width: 90, height: 45)
                    
                    .background(.white)
                    .cornerRadius(8)
                    
                    
                    Button {
                        print("")
                    } label: {
                        HStack {
                            Text("Iniciar novo cadastro ")
                                .foregroundColor(.white)
                                .font(.system(size: 15))
                                
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .font(.system(size: 15))
                            
                            Spacer()
                        }
                        
                    }
                    .frame(width: 250, height: 45)


                }
                .padding()
                
                Spacer()
            }

            
            if showModal == true {
                ModalView(isShowing: $showModal)
                    .animation(.easeInOut)
                    .transition(.move(edge: .bottom))
            } else {
                HStack {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Token")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                        Text("000000")
                    }
                    .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button {
                        print("")
                    } label: {
                        VStack {
                            Text("Ajuda")
                                .font(.system(size: 15, weight: .semibold, design: .rounded))
                        }
                        .foregroundColor(.white)
                    }

                }
                .padding()
                Spacer()
            }
            
        }
        .ignoresSafeArea()
        .background(Color("DarkBlue"))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
