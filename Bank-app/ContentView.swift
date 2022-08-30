//
//  ContentView.swift
//  Bank-app
//
//  Created by Lucas Newlands on 30/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
            
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(0..<3, id: \.self) {item in
                            CardView(isActive: item == 0)
                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                        }
                    }
                    .padding(20)
                }
            }
            .navigationTitle(Text("Meus Cartões"))
        }

   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
