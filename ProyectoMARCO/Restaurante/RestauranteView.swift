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
            
            NavigationLink(destination: ReservaMesaView(), label: {
                ZStack {
                    Image("RestauranteMarco")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 280)
                        .padding()
                    
                    Text("APARTA TU MESA")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Blanco"))
                        .multilineTextAlignment(.center)
                }
            })
            
            ZStack {
                Image("MenuMarco")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 280)
                    .padding()
                    .onTapGesture {
                        UIApplication.shared.open(URL(string: "https://www.marco.org.mx/wp-content/uploads/2021/07/menu-restaurante1.pdf")!)
                }
                
                Text("REVISA EL MENU")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Blanco"))
                    .multilineTextAlignment(.center)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar(content: {
            ToolbarItem(placement: .principal, content: {
                HStack{
                    Text("Restaurante").foregroundColor(.white)
                }
            })
        })
    }
}

struct RestauranteView_Previews: PreviewProvider {
    static var previews: some View {
        RestauranteView()
    }
}
