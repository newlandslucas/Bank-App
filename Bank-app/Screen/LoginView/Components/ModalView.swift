//
//  ModalView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 14/09/22.
//

import SwiftUI

struct ModalView: View {
    
    @EnvironmentObject var authenticationManager: AuthenticationManager
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if isShowing{
                Color("DarkBlue")
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                    }
                
                VStack {
                    //MARK: Header
                    HStack {
                        Text("BANK APP")
                            .font(.system(size: 16, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)

                        
                        Spacer()
                        
                        Button {
                            isShowing = false
                        } label: {
                            Image(systemName: "xmark")
                        }

                    }
                    Spacer()
                    
                    VStack(alignment: .center, spacing: 5) {
                        Text("Lucas Newlands")
                            .font(.title2)
                            .foregroundColor(.black)
                        
                        
                        Text("000.000.000-00")
                            .foregroundColor(.black.opacity(0.8))
                            .font(.system(size: 14))
                    }
                    
                    Spacer()
                    
                    AuthenticationButton()
                            .onTapGesture {
                                    Task.init {
                                        await authenticationManager.authenticateWithBiometrics()
                                    }
                                }

                    
                    Button {
                        print("Acessar")
                    } label: {
                        Text("Alterar dados de acesso")
                            .font(.system(size: 14))
                            .foregroundColor(Color.blue)
                    }
                }
                .padding()
                
                .frame(height: 300)
                .frame(maxWidth: .infinity)
                .background(.white)
                .transition(.move(edge: .bottom))
                .cornerRadius(15)
                
            }
            
            Spacer()
           
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut)
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(AuthenticationManager())
    }
}
