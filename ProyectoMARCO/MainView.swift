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
        case login
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
                PaginaLoginView()
            }
            .tabItem {
                let menuText = Text("Login", comment: "Login")
                Label {
                    menuText
                } icon: {
                    Image(systemName: "person")
                }
            }
            .tag(Tab.login)
            
            NavigationView {
                RestauranteView()
            }
            .tabItem {
                let menuText = Text("Restaurant", comment: "Restaurant")
                Label {
                    menuText
                } icon: {
                    Image(systemName: "fork.knife")
                }
            }
            .tag(Tab.restaurante)
            
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
