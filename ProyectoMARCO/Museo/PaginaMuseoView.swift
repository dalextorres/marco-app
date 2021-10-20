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
            NavigationLink(destination : VisitasMenuView(), label:{
                    ZStack{
                        BotonImagen(buttonImageName: "image 15")
                        Text("AGENDA TU \nVISITA")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                    }
            })

            NavigationLink(destination : RecorridoVirtualView(), label:{
                    ZStack{
                        BotonImagen(buttonImageName: "image 16")
                        Text("RECORRIDOS \nVIRTUALES")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                    }
            })

            NavigationLink(destination : CursosView(), label:{
                    ZStack{
                        BotonImagen(buttonImageName: "image 17")
                        Text("APRENDE EN \nMARCO")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                    }
            })
        }.navigationBarTitleDisplayMode(.inline)
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

struct PaginaMuseoView_Previews: PreviewProvider {
    static var previews: some View {
        PaginaMuseoView()
    }
}
