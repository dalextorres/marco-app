//
//  PaginaAccountView.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 18/10/21.
//

import SwiftUI

struct PaginaAccountView: View {

    @EnvironmentObject var loginVM : LoginViewModel

    var body: some View {
        VStack {
            Button(action: {
                loginVM.logout()
            }, label: {
                Text("Logout")
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)
                    .font(.custom("Roboto Mono", size: 19))
                
            })
        }
    }
}

struct PaginaAccountView_Previews: PreviewProvider {
    static var previews: some View {
        PaginaAccountView()
    }
}
