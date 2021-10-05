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
    
    var islogged = false
    
    var body: some Scene {
        WindowGroup {
            if(islogged) {
                MainView()
                    .environmentObject(loginVM)
            } else {
                PaginaLoginView()
                    .environmentObject(loginVM)
            }
        }
    }
}
