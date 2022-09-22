//
//  ProfileView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 04/09/22.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var authenticationManager = AuthenticationManager()

    var body: some View {
        
        VStack {
            if authenticationManager.isAuthenticatedOnProfile {
                VStack(spacing: -15) {
                    HStack(spacing: 35) {
                        Text("Meu Perfil")
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                            .padding()
                        Spacer()
                        
                        LogOutButton()
                                .onTapGesture {
                                        Task.init {
                                            await authenticationManager.logoff()
                                        }
                                    }

                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color("DarkBlue"))
                    .frame(width: 400)
                    ScrollView(.vertical, showsIndicators: false) {

                        HeaderProfile()
                        
                        Group {
                            ProfileOptions(text: "Dados pessoais")
                            ProfileOptions(text: "Open Finance")
                            ProfileOptions(text: "Informe de rendimentos")
                            ProfileOptions(text: "Carta de titularidade")
                        }
                        
                        HStack {
                            Text("Configurações")
                                .font(.system(size: 18, weight: .semibold, design: .rounded))
                                .foregroundColor(Color.black.opacity(0.8))
                            Spacer()
                        }
                        .padding()
                        
                        //MARK: SETTINGS SESSION
                        
                        ProfileOptions(text: "Meus limites da conta")
                        ProfileOptions(text: "Privacidade e segurança")
                        ProfileOptions(text: "Notificações")
                        ProfileOptions(text: "Minhas chaves Pix")
                        
                        HStack {
                            Text("Precisa de Ajuda?")
                                .font(.system(size: 18, weight: .semibold, design: .rounded))
                                .foregroundColor(Color.black.opacity(0.8))
                            Spacer()
                        }
                        .padding()
                        
                        //MARK: Questions SESSION
                        
                        Group {
                            ProfileOptions(text: "Perguntas frequentes")
                            ProfileOptions(text: "Fale com a gente")
                            ProfileOptions(text: "Encerre sua conta")
                        }
                        
                        Button {
                            print("clicou")
                        } label: {
                            HStack {
                                Text("Sair do app")
                                
                            }
                            .frame(width: 250, height: 50)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .foregroundColor(.white)
                        }

                       
                    }
                    .ignoresSafeArea()
                    .frame(width: 400)
                    .background(.white)
            }
            } else {
                ContentView()
            }
        }
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
