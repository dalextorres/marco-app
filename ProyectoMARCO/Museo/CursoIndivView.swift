//
//  CursoIndivView.swift
//  ProyectoMARCO
//
//  Created by user189955 on 10/20/21.
//

import SwiftUI

struct CursoIndivView: View {
    let image: String
    let curso: String
    let tipo: String
    
    var body: some View {
        ZStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 10)
                .background(Color.black)
                .opacity(0.5)
            
            
            VStack {
                Text(curso)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: 360, alignment: .leading)
                    .foregroundColor(Color("Blanco"))
                    .multilineTextAlignment(.center)
                
                Text(tipo)
                    .font(.title)
                    .frame(width: 360, alignment: .leading)
                    .foregroundColor(Color("Blanco"))
                    .multilineTextAlignment(.center)
                
                Spacer()
            }
        }
    }
}

struct CursoIndivView_Previews: PreviewProvider {
    static var previews: some View {
        CursoIndivView(image: "img_cine", curso: "CINE", tipo: "PRESENCIAL")
    }
}
