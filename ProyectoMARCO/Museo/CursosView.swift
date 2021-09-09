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
                
                ZStack{
                    Image("image 12")
                        .resizable()
                        .scaledToFit()
                        .frame(width:400 ,height: 240)
                        .shadow(radius: 10)
                    
                    VStack {
                        Text("NOMBRE DE CURSO")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .frame(width: 360, alignment: .leading)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                        
                        Text("FECHA")
                            .font(.title)
                            .frame(width: 360, alignment: .leading)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }
                }
                
                ZStack{
                    Image("image 12")
                        .resizable()
                        .scaledToFit()
                        .frame(width:400 ,height: 240)
                        .shadow(radius: 10)
                    
                    VStack {
                        Text("NOMBRE DE CURSO")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .frame(width: 360, alignment: .leading)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                        
                        Text("FECHA")
                            .font(.title)
                            .frame(width: 360, alignment: .leading)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }
                }
                
                ZStack{
                    Image("image 12")
                        .resizable()
                        .scaledToFit()
                        .frame(width:400 ,height: 240)
                        .shadow(radius: 10)
                    
                    VStack {
                        Text("NOMBRE DE CURSO")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .frame(width: 360, alignment: .leading)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                        
                        Text("FECHA")
                            .font(.title)
                            .frame(width: 360, alignment: .leading)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }
                }
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
