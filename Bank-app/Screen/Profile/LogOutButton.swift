//
//  LogOutButton.swift
//  Bank-app
//
//  Created by Lucas Newlands on 22/09/22.
//

import SwiftUI

struct LogOutButton: View {
    var body: some View {

            Image(systemName: "rectangle.portrait.and.arrow.right")
                .foregroundColor(.white)
                .font(.system(size: 18))
    }
}

struct LogOutButton_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButton()
    }
}
