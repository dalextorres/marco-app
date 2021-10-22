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
    @StateObject var horariosVM = HorariosViewModel()
    
    var body: some Scene {
        WindowGroup {
            if(loginVM.isLoggedIn) {
                MainView()
                    .environmentObject(loginVM)
                    .environmentObject(horariosVM)
            } else {
                PaginaLoginView()
                    .environmentObject(loginVM)
                    .environmentObject(signupVM)
            }
        }
    }
}
