//
//  VisitasGuiadasView.swift
//  ProyectoMARCO
//
//  Created by Melissa Salazar on 10/09/21.
//

import SwiftUI

struct VisitasGuiadasView: View {
    var body: some View {
        ScrollView{
            VStack {
                Text("VISITAS GUIADAS")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(height: 80)
                    .padding()
                
                RecuadroVisita(imageName: "image 16")
                RecuadroVisita(imageName: "image 16")
                RecuadroVisita(imageName: "image 16")
            }
        }
    }
}

struct VisitasGuiadasView_Previews: PreviewProvider {
    static var previews: some View {
        VisitasGuiadasView()
    }
}
