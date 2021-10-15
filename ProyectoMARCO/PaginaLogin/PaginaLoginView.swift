//
//  PaginaLoginView.swift
//  ProyectoMARCO
//
//  Created by user189955 on 9/7/21.
//

import SwiftUI

struct PaginaLoginView: View {
    
    @EnvironmentObject var loginVM : LoginViewModel
    @EnvironmentObject var signupVM : SignupViewModel
    
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    
    var body: some View {
        NavigationView {
            VStack{
                Text("BIENVENIDO")
                    .multilineTextAlignment(.center)
                    .font(.custom("Roboto Mono", size: 25))
                    .padding(.bottom, 30)
        
                TextField("Correo electronico", text: $loginVM.email)
                    .padding(4)
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .font(.custom("Roboto Mono", size: 17))
                    .frame(height: 50)
                SecureField("Contrasena", text: $loginVM.password)
                    .padding(4)
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .font(.custom("Roboto Mono", size: 17))
                    .frame(height: 50)
                
                Button(action: {
                        loginVM.login()
                }, label: {
                    Text("LOGIN")
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 5)
                        .font(.custom("Roboto Mono", size: 19))
                    
                })
                .background(Color("Rosa"))
                .cornerRadius(5)
                
            
                NavigationLink(destination: PaginaSignupView()) {
                    Text("SIGNUP")
                }
            }
            
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

