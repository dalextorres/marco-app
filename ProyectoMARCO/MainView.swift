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
        
        //UITabBar.appearance().unselectedItemTintColor = UIColor(.white)
        
        UITabBar.appearance().standardAppearance = tabBarAppearance
    }

    
    enum Tab {
        case home
        case museo
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
            .navigationAppearance(backgroundColor: UIColor(Color("Rosa")), foregroundColor: .white, tintColor: .white, hideSeparator: true)
            
            NavigationView {
                PaginaMuseoView()
            }
            .tabItem {
                let menuText = Text("Museo", comment: "Museo")
                Label {
                    menuText
                } icon: {
                    Image(systemName: "house")
                }
            }
            .tag(Tab.museo)
            
        }
        .accentColor(Color(.black))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
