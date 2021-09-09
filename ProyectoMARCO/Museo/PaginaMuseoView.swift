//
//  PaginaMuseoView.swift
//  ProyectoMARCO
//
//  Created by Melissa Salazar on 06/09/21.
//
import SwiftUI

struct PaginaMuseoView: View {
    var body: some View {
        VStack{
            NavigationLink(destination : AgendaVisitasView(nombreVisitante: "", numeroBoletos: 0), label:{
                    ZStack{
                        BotonImagen(buttonImage: "image 15")
                        Text("AGENDA TU \nVISITA")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                    }
            })

            NavigationLink(destination : RecorridoVirtualView(), label:{
                    ZStack{
                        BotonImagen(buttonImage: "image 16")
                        Text("RECORRIDOS \nVIRTUALES")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                    }
            })

            NavigationLink(destination : CursosView(), label:{
                    ZStack{
                        BotonImagen(buttonImage: "image 17")
                        Text("APRENDE EN \nMARCO")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                    }
            })
        }.navigationBarTitleDisplayMode(.inline)
        .toolbar(content: {
            ToolbarItem(placement: .principal, content: {
                HStack{
                    TopToolbarView()
                }
            })
        })
    }
}

struct PaginaMuseoView_Previews: PreviewProvider {
    static var previews: some View {
        PaginaMuseoView()
    }
}
