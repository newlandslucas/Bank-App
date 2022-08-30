//
//  ContentView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            CardScreen()
                .tabItem { Label("Home", systemImage: "house") }
            VStack {}
            .tabItem{Label("Cartões", systemImage: "creditcard.fill")}
            VStack {}
            .tabItem{Label("Carteira", systemImage: "dollarsign.square")}
            VStack {}
            .tabItem{Label("Perfil", systemImage: "person")}
        }
        .foregroundColor(Color.black)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
