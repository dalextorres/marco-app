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
            //Icono de home
            .tabItem {
                let menuText = Text("Home", comment: "Home")
                Label {
                    menuText
                } icon: {
                    Image(systemName: "house")
                }
            }
            .tag(Tab.home)

            NavigationView{
                Text("Store")
            }
            //Icono de Store
            .tabItem {
                let menuText = Text("Store", comment: "Store")
                Label {
                    menuText
                } icon: {
                    Image(systemName: "cart").onTapGesture {
                        UIApplication.shared.open(URL(string: "https://storemarco.art")!)
                    }
                    
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
