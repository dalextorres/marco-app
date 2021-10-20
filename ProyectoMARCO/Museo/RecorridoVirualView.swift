//
//  RecorridoVirtualView.swift
//  ProyectoMARCO
//
//  Created by Melissa Salazar on 06/09/21.
//
import SwiftUI

struct RecorridoVirtualView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("ENTRA AL MUSEO")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(height: 80)
                    .padding()
                
                ZStack {
                    Image("image 11")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 330)
                        .shadow(radius: 10)
                    
                    Text("RECORRE MARCO")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Blanco"))
                        .multilineTextAlignment(.center)
                }
                
                Text("EXPOSICIONES")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                ExhibicionView(img: "exhib_1", name: "INDEX", author: "MARCO y FFProjects")
                
                ExhibicionView(img: "exhib_2", name: "La poética del Regreso", author: "Mario García Torres")
                
                ExhibicionView(img: "exhib_3", name: "", author: "Miguel Calderón")
                
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

struct RecorridoVirtualView_Previews: PreviewProvider {
    static var previews: some View {
        RecorridoVirtualView()
    }
}
