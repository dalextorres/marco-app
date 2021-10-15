//
//  SignupViewModel.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 14/10/21.
//

import Foundation

class SignupViewModel : ObservableObject {
    var nombre = ""
    var email = ""
    var password = ""
    var tipo = "usuario"
    
    func signup() {
        
        Webservice().signup(nombre: nombre, email: email, password: password, tipo: tipo) { result in
            switch result {
            case .success(let message):
                print(message)
                print("Usuario creado")
            case .failure(let error):
                print(error.localizedDescription)
                print("No se pudo crear el usuario")
            }
        }
        
    }
    
}
