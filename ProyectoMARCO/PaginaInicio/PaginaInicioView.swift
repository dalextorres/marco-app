//
//  PaginaInicioView.swift
//  ProyectoMARCO
//
//  Created by user195618 on 9/5/21.
//

import SwiftUI

struct PaginaInicioView: View {
    
    @State private var index = 0
    
    let anuncios : [String] = ["Anuncio1", "Anuncio2", "Anuncio3"]
    
    var body: some View {
        ScrollView {
            VStack {
                Text("HOY EN MARCO")
                    .font(.title)
                    .bold()
                    
                VStack {
                    TabView(selection: $index) {
                        ForEach(anuncios, id: \.self) { anuncio in
                            Image(anuncio)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 350)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                }
                .frame(height: 350)
                
                Text("ENTRA A MARCO")
                    .font(.title)
                    .bold()
                    .padding(.top)
                
                VStack {
                    ZStack {
                        Image("Inicio1")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 350)
                            .padding()
                        VStack(alignment: .leading) {
                            Text("MUSEO")
                            Text("VIRTUAL")
                                .bold()
                            Text("MUSEO DE")
                            Text("TODOS")
                                .bold()
                        }
                        .foregroundColor(.white)
                        .font(.system(size: 52.0))
                        .frame(height: 350)
                    }
                }
                
                Spacer()
            }
//  
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
//
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
}

struct PaginaInicioView_Previews: PreviewProvider {
    static var previews: some View {
        PaginaInicioView()
    }
}
