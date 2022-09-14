//
//  ContentView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color.gray)
        UITabBar.appearance().barTintColor = UIColor(Color.white)
        }
    var body: some View {
        
        HStack {
            TabView {
                HomeView()
                    .tabItem { Label("Home", systemImage: "house") }
                CardsView()
                .tabItem{Label("Cartões", systemImage: "creditcard.fill")}
                ShopView()
                .tabItem{Label("Shop", systemImage: "bag.fill")}
                ProfileView()
                .tabItem{Label("Perfil", systemImage: "person")}
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
