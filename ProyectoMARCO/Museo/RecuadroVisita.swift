//
//  RecuadroVisita.swift
//  ProyectoMARCO
//
//  Created by Melissa Salazar on 10/09/21.
//

import SwiftUI

struct RecuadroVisita: View {
    var imageName : String
    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 390)
                .shadow(radius: 10)
            
            VStack {
                Text("NOMBRE DEL RECORRIDO")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 360, alignment: .leading)
                    .foregroundColor(Color("Blanco"))
                    .multilineTextAlignment(.center)
                
                    Text("LUGARES: 0 / 30")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(width: 360, alignment: .leading)
                        .foregroundColor(Color("Blanco"))
                        .multilineTextAlignment(.center)
                    
                    Text("10/9/2022")
                        .font(.title2)
                        .frame(width: 360, alignment: .leading)
                        .foregroundColor(Color("Blanco"))
                        .multilineTextAlignment(.center)
            }
        }
    }
}

struct RecuadroVisita_Previews: PreviewProvider {
    static var previews: some View {
        RecuadroVisita(imageName: "image 16")
    }
}
