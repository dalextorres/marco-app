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
                    Image("restaurante")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 390,height: 280)
                        .padding()
                    
                    Text("APARTA TU MESA")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Blanco"))
                        .multilineTextAlignment(.center)
                }
            })
            
            NavigationLink(destination: WebView(html: "https://www.marco.org.mx/wp-content/uploads/2021/07/menu-restaurante1.pdf"),
                label: {
                    ZStack {
                        Image("image 20")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 390,height: 280)
                            .padding()
                        
                        Text("REVISA EL MENU")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                    }
                })
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Image("LogoMarco")
                    .resizable()
                    .frame(width: CGFloat(30), height: CGFloat(30), alignment: .center)
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: PaginaAccountView(), label: {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: CGFloat(30), height: CGFloat(30), alignment: .trailing)
                }).padding(.trailing, CGFloat(20))
            }
        }
    }
}

struct RestauranteView_Previews: PreviewProvider {
    static var previews: some View {
        RestauranteView()
    }
}
