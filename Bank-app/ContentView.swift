//
//  ContentView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var authenticationManager = AuthenticationManager()
    
    init() {
        UITabBar.appearance().isTranslucent = true
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color.gray)
        UITabBar.appearance().barTintColor = UIColor(Color.white)
        }
    var body: some View {
        
        VStack {
            if authenticationManager.isAuthenticated {
                NavigationView()
            } else {
                LoginView()
                    .environmentObject(authenticationManager)
            }
            
        }
        .alert(isPresented: $authenticationManager.showAlert) {
            Alert(title: Text("Error"), message: Text(authenticationManager.errorDescription ?? "Erro ao autenticar, tente novamente"), dismissButton: .default(Text("Ok")))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
