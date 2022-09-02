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
            HomeScreen()
                .tabItem { Label("Home", systemImage: "house") }
            CardScreen()
            .tabItem{Label("Cartões", systemImage: "creditcard.fill")}
            VStack {}
            .tabItem{Label("Shop", systemImage: "bag.fill")}
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
