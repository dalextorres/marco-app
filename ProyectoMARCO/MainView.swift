//
//  ContentView.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 03/09/21.
//

import SwiftUI

struct MainView: View {
    
    init() {
        let tabBarAppearance = UITabBarAppearance()
        
        tabBarAppearance.backgroundColor = UIColor(Color("Rosa"))
        
        UITabBar.appearance().standardAppearance = tabBarAppearance
    }
    
    enum Tab {
        case home
        case museo
        case restaurante
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
                    Image(systemName: "house.fill")
                }
            }
            .tag(Tab.home)
            
            NavigationView {
                PaginaMuseoView()
            }
            .tabItem {
                let menuText = Text("Museo", comment: "Musseo")
                Label {
                    menuText
                } icon: {
                    Image(systemName: "house")
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
                    Image(systemName: "circle")
                }
            }
            .tag(Tab.restaurante)
            
            NavigationView {
                PaginaLoginView()
                .navigationBarHidden(true)
            }
            .tabItem {
                let menuText = Text("Login", comment: "Login")
                Label {
                    menuText
                } icon: {
                    Image(systemName: "person")
                }
            }
            .tag(Tab.other)
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
