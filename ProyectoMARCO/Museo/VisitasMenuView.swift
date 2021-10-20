//
//  VisitasMenuView.swift
//  ProyectoMARCO
//
//  Created by Melissa Salazar on 10/09/21.
//

import SwiftUI

struct VisitasMenuView: View {	
    var body: some View {
        VStack{
            NavigationLink(destination : MarcoBoletosView() , label:{
                    ZStack{
                        Image("visitamarco 1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 385)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                        Text("COMPRA TU \nBOLETO")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                    }
            })
            
            NavigationLink(destination : AgendaVisitasView(nombreVisitante: "", numeroBoletos: 0), label:{
                    ZStack{
                        Image("image 22")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 375)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                        Text("VISITAS GUIADAS")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
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

struct VisitasMenuView_Previews: PreviewProvider {
    static var previews: some View {
        VisitasMenuView()
    }
}
