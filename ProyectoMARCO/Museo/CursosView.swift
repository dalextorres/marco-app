//
//  CursosView.swift
//  ProyectoMARCO
//
//  Created by Melissa Salazar on 08/09/21.
//

import SwiftUI

struct CursosView: View {
    var body: some View {
        ScrollView{
            VStack {
                Text("APRENDE EN MARCO")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(height: 80)
                    .padding()
                
                
                NavigationLink(destination: CursoDetailView(url: "https://www.marco.org.mx//inscripciones-pinturaydibujo/"), label: {
                        CursoIndivView(image: "img_pintura", curso: "PINTURA Y DIBUJO", tipo: "PRESENCIAL")
                    })
                
                NavigationLink(destination: CursoDetailView(url: "https://www.marco.org.mx//inscripciones-fotografia/"), label: {
                        CursoIndivView(image: "img_fotografia", curso: "FOTOGRAFÍA", tipo: "PRESENCIAL")
                    })
                
                NavigationLink(destination: CursoDetailView(url: "https://www.marco.org.mx//inscripciones-cine/"), label: {
                        CursoIndivView(image: "img_cine", curso: "CINE", tipo: "PRESENCIAL")
                    })
                NavigationLink(destination: CursoDetailView(url: "https://www.marco.org.mx//inscripciones-cine/"), label: {
                        CursoIndivView(image: "img_psicologia", curso: "BIENESTAR Y PSICOLOGÍA", tipo: "EN LÍNEA")
                    })
                NavigationLink(destination: CursoDetailView(url: "https://www.marco.org.mx//inscripciones-cine/"), label: {
                        CursoIndivView(image: "img_escultura", curso: "ESCULTURA", tipo: "PRESENCIAL")
                    })
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .principal, content: {
                    HStack{
                        Text("Museo").foregroundColor(.white)
                    }
                })
            })
        }
    }
}

struct CursosView_Previews: PreviewProvider {
    static var previews: some View {
        CursosView()
    }
}
