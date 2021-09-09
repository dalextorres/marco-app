//
//  ContentView.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 03/09/21.
//

import SwiftUI

struct MainView: View {
    
    init() {
        
        UITabBar.appearance().barTintColor = UIColor(Color("Rosa"))
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
        
    }
    
    enum Tab {
        case home
        case museo
        case restaurante
        case shop
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
                    Image(systemName: "house.fill")
                }
            }
            .tag(Tab.home)
            
            NavigationView {
                PaginaMuseoView()
            }
            .tabItem {
                let menuText = Text("Museo", comment: "Museo")
                Label {
                    menuText
                } icon: {
                    Image(systemName: "paintpalette.fill")
                }
            }
            .tag(Tab.museo)
            
            NavigationView {
                RestauranteView()
            }
            .tabItem {
                let menuText = Text("Restaurante", comment: "Restaurante")
                Label {
                    menuText
                } icon: {
                    Image("fork.knife").font(.title2)
                }
            }
            .tag(Tab.restaurante)
            
            NavigationView {
                PaginaMuseoView()
            }
            .tabItem {
                let menuText = Text("Tienda", comment: "Tienda")
                Label {
                    menuText
                } icon: {
                    Image(systemName: "cart.fill")
                }
            }
            .tag(Tab.shop)
            
        }
        .accentColor(.black)
        .navigationAppearance(backgroundColor: UIColor(Color("Rosa")), foregroundColor: .white, tintColor: .white, hideSeparator: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
