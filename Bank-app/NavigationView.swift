//
//  NavigationView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 21/09/22.
//

import SwiftUI

struct NavigationView: View {
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

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}
