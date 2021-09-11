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
                
                ZStack{
                    Image("image 16")
                        .resizable()
                        .scaledToFit()
                        .frame(width:400 ,height: 240)
                        .shadow(radius: 10)
                    
                    VStack {
                        Text("NOMBRE DE OBRA")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .frame(width: 360, alignment: .leading)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                        
                        Text("AUTOR")
                            .font(.title)
                            .frame(width: 360, alignment: .leading)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }
                }
                
                ZStack{
                    Image("image 16")
                        .resizable()
                        .scaledToFit()
                        .frame(width:400 ,height: 240)
                        .shadow(radius: 10)
                    
                    VStack {
                        Text("NOMBRE DE OBRA")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .frame(width: 360, alignment: .leading)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                        
                        Text("AUTOR")
                            .font(.title)
                            .frame(width: 360, alignment: .leading)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }
                }
                
                ZStack{
                    Image("image 16")
                        .resizable()
                        .scaledToFit()
                        .frame(width:400 ,height: 240)
                        .shadow(radius: 10)
                    
                    VStack {
                        Text("NOMBRE DE OBRA")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .frame(width: 360, alignment: .leading)
                            .foregroundColor(Color("Blanco"))
                            .multilineTextAlignment(.center)
                        
                        Text("AUTOR")
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

struct RecorridoVirtualView_Previews: PreviewProvider {
    static var previews: some View {
        RecorridoVirtualView()
    }
}
