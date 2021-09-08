//
//  RestauranteView.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 06/09/21.
//

import SwiftUI

struct RestauranteView: View {
    
    var body: some View {
        
        VStack {
            
            Image("MenuMarco")
                .resizable()
                .scaledToFit()
                .frame(height: 280)
                .padding()
                .onTapGesture {
                    UIApplication.shared.open(URL(string: "https://www.marco.org.mx/wp-content/uploads/2021/07/menu-restaurante1.pdf")!)
                }
            
            NavigationLink(destination: ReservaMesaView(), label: {
                Image("RestauranteMarco")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 280)
                    .padding()
            })
        }
        
    }
}

struct RestauranteView_Previews: PreviewProvider {
    static var previews: some View {
        RestauranteView()
    }
}
