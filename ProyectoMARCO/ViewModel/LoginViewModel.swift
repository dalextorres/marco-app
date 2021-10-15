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
    @Published var isLoggedIn = false
    
    func login() {
        
        Webservice().login(email: email, password: password) { result in
            switch result {
            case .success(let message):
                print(message)
                DispatchQueue.main.async {
                    self.isLoggedIn = true
                }
            case .failure(let error):
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    self.isLoggedIn = false
                }
            }
        }
        
    }
    
}
