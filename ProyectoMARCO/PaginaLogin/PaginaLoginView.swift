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
                ZStack {
                    
                
                    
                    Rectangle()
                        .fill(Color("Rosa"))
                        .frame(width: .infinity, height: 300	)
                        
                        
                Image("LogoMarco")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                }
                .padding(.bottom)
                    
                
                Text("**Bienvenido a Marco**")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30))
                    .padding(.bottom, 30)
        
                VStack {
                TextField("Correo electronico", text: $loginVM.email)
                    .padding(15)
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .font(.custom("Roboto Mono", size: 17))
                    .frame(height: 70)
                SecureField("Contrasena", text: $loginVM.password)
                    .padding(15)
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                    .font(.custom("Roboto Mono", size: 17))
                    .frame(height: 70)
                }
                .padding(.horizontal, 50)
                .padding(.bottom, 20)
                Button(action: {
                        loginVM.login()
                }, label: {
                    Text("**Iniciar Sesion**")
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                        .font(.custom("Roboto Mono", size: 19))
                    
                })
                .background(Color("Rosa"))
                .cornerRadius(5)
                
                Spacer()
        
                HStack {
                    Text("No tienes cuenta?")
                        .font(.custom("Roboto Mono", size: 19))
                        .padding()
                    NavigationLink(destination: PaginaSignupView()) {
                        Text("**Registrate**")
                            .font(.custom("Roboto Mono", size: 19))
                           
                    }
                    .padding()
                }
                Spacer()
            }
            .edgesIgnoringSafeArea(.top)
        
        }
       

        }
}

struct PaginaLoginView_Previews: PreviewProvider {
    static var previews: some View {
        PaginaLoginView()
            .environmentObject(LoginViewModel())
    }
}

