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
                        Button(buttonImage: "image 15")
                        Text("AGENDA TU \nVISITA")
                            .font(.title)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                    }
            })
            
            NavigationLink(destination : RecorridoVirtualView(), label:{
                    ZStack{
                        Button(buttonImage: "image 16")
                        Text("RECORRIDOS \nVIRTUALES")
                            .font(.title)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                    }
            })
            
            NavigationLink(destination : AgendaVisitasView(nombreVisitante: "", numeroBoletos: 0), label:{
                    ZStack{
                        Button(buttonImage: "image 17")
                        Text("APRENDE EN \nMARCO")
                            .font(.title)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                    }
            })
        }.navigationBarTitleDisplayMode(.inline)
        .toolbar(content: {
            ToolbarItem(placement: .principal, content: {
                HStack{
                    Text("Museo").foregroundColor(.white)
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
