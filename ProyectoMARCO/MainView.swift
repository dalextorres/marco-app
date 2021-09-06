//
//  ContentView.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 03/09/21.
//

import SwiftUI

struct MainView: View {
    
    enum Tab {
        case home
        case other
    }
    
    @State private var tab : Tab = .home
    
    var body: some View {
        TabView(selection: $tab) {
            
            NavigationView {
                PaginaInicioView()
            }
            .tabItem {
                let menuText = Text("Home", comment: "Home")
                Label {
                    menuText
                } icon: {
                    Image(systemName: "house")
                }
            }
            .tag(Tab.home)
            
            NavigationView {
                Text("Other")
            }
            .tabItem {
                let menuText = Text("Other", comment: "Other")
                Label {
                    menuText
                } icon: {
                    Image(systemName: "house")
                }
            }
            .tag(Tab.other)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
