//
//  LoginViewModel.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 04/10/21.
//

import Foundation

class LoginViewModel : ObservableObject {
    var email = ""
    var password = ""
    
    func login() {
        
        Webservice().login(email: email, password: password) { result in
            switch result {
            case .success(let token):
                print(token)
                print("Login exitoso")
            case .failure(let error):
                print(error.localizedDescription)
                print("Login fallo")
            }
        }
        
    }
    
}
