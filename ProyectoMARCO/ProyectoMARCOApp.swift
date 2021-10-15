//
//  ProyectoMARCOApp.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 03/09/21.
//

import SwiftUI

@main
struct ProyectoMARCOApp: App {
    
    @StateObject var loginVM = LoginViewModel()
    @StateObject var signupVM = SignupViewModel()
    
    var body: some Scene {
        WindowGroup {
            if(loginVM.isLoggedIn) {
                MainView()
                    .environmentObject(loginVM)
            } else {
                PaginaLoginView()
                    .environmentObject(loginVM)
                    .environmentObject(signupVM)
            }
        }
    }
}
