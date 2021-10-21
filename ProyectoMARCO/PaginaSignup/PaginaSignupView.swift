//
//  PaginaSignupView.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 14/10/21.
//

import SwiftUI

struct PaginaSignupView: View {
    @EnvironmentObject var signupVM : SignupViewModel
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    var body: some View {
        VStack{
            Image("LogoMarco")
            Text("Unete a Marco!")
                .multilineTextAlignment(.center)
                .font(.custom("Roboto Mono", size: 25))
                .padding(.bottom, 30)
            VStack {
            TextField("Nombre", text: $signupVM.nombre)
                .padding(15)
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .font(.custom("Roboto Mono", size: 17))
                .frame(height: 70)
            TextField("Correo electronico", text: $signupVM.email)
                .padding(15)
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .font(.custom("Roboto Mono", size: 17))
                .frame(height: 70)
            SecureField("Contrasena", text: $signupVM.password)
                .padding(15)
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .font(.custom("Roboto Mono", size: 17))
                .frame(height: 70)
            }
            .padding(.horizontal, 20)
            Button(action: {
                signupVM.signup()
            }, label: {
                Text("Registrarse")
                    .foregroundColor(.white)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
                    .font(.custom("Roboto Mono", size: 19))
                
            })
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

struct PaginaSignupView_Previews: PreviewProvider {
    static var previews: some View {
        PaginaSignupView()
            .environmentObject(SignupViewModel())
    }
}
