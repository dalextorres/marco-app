//
//  PaginaLoginView.swift
//  ProyectoMARCO
//
//  Created by user189955 on 9/7/21.
//

import SwiftUI

struct PaginaLoginView: View {
    
    @State var name: String = ""
    @State var lastName: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    var body: some View {
        VStack{
            Text("BIENVENIDO")
                .multilineTextAlignment(.center)
                .font(.custom("Roboto Mono", size: 25))
                .padding(.bottom, 70)
    

            TextField("Nombre",  text: $name)
                .padding(4)
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .font(.custom("Roboto Mono", size: 17))
                .frame(height: 50)
            TextField("Apellido", text: $lastName)
                .padding(4)
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .font(.custom("Roboto Mono", size: 17))
                .frame(height: 50)
            TextField("Correo electronico", text: $email)
                .padding(4)
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .font(.custom("Roboto Mono", size: 17))
                .frame(height: 50)
            TextField("Contrasena", text: $password)
                .padding(4)
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .font(.custom("Roboto Mono", size: 17))
                .frame(height: 50)
            
            Button(action: {print("Boton presionado")}) {
                Text("CONFIRMAR")
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)
                    .font(.custom("Roboto Mono", size: 19))
                
            }
            .background(Color("Rosa"))
            .cornerRadius(5)
            
            
            
        
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
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


struct PaginaLoginView_Previews: PreviewProvider {
    static var previews: some View {
        PaginaLoginView()
    }
}

