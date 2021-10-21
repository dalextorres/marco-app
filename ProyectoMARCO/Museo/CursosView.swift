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
                    ZStack{
                        Image("img_pintura")
                            .resizable()
                            .scaledToFit()
                            .frame(width:400 ,height: 240)
                            .shadow(radius: 10)
                        
                        VStack {
                            Text("PINTURA Y DIBUJO")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .frame(width: 360, alignment: .leading)
                                .foregroundColor(Color("Blanco"))
                                .multilineTextAlignment(.center)
                            
                            Text("PRESENCIAL")
                                .font(.title)
                                .frame(width: 360, alignment: .leading)
                                .foregroundColor(Color("Blanco"))
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                        }
                    }
                })
                
                NavigationLink(destination: CursoDetailView(url: "https://www.marco.org.mx//inscripciones-fotografia/"), label: {
                    ZStack{
                        Image("img_fotografia")
                            .resizable()
                            .scaledToFit()
                            .frame(width:400 ,height: 240)
                            .shadow(radius: 10)
                        
                        VStack {
                            Text("FOTOGRAFÍA")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .frame(width: 360, alignment: .leading)
                                .foregroundColor(Color("Blanco"))
                                .multilineTextAlignment(.center)
                            
                            Text("PRESENCIAL")
                                .font(.title)
                                .frame(width: 360, alignment: .leading)
                                .foregroundColor(Color("Blanco"))
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                        }
                    }
                })
                
                NavigationLink(destination: CursoDetailView(url: "https://www.marco.org.mx//inscripciones-cine/"), label: {
                    ZStack{
                        Image("img_cine")
                            .resizable()
                            .scaledToFit()
                            .frame(width:400 ,height: 240)
                            .shadow(radius: 10)
                        
                        VStack {
                            Text("CINE")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .frame(width: 360, alignment: .leading)
                                .foregroundColor(Color("Blanco"))
                                .multilineTextAlignment(.center)
                            
                            Text("PRESENCIAL")
                                .font(.title)
                                .frame(width: 360, alignment: .leading)
                                .foregroundColor(Color("Blanco"))
                                .multilineTextAlignment(.center)
                            
                            Spacer()
                        }
                    }
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
