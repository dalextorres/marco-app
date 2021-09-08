//
//  PaginaInicioView.swift
//  ProyectoMARCO
//
//  Created by user195618 on 9/5/21.
//

import SwiftUI

struct PaginaInicioView: View {
    
    @State private var index = 0
    
    var body: some View {
        ScrollView {
            VStack {
                Text("HOY EN MARCO")
                    .font(.title)
                    .bold()
                    
                VStack {
                    TabView(selection: $index) {
                        ForEach((0..<3), id: \.self) { index in
                            CardView()
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                }
                .frame(height: 350)
                
                Text("ENTRA A MARCO")
                    .font(.title)
                    .bold()
                    .padding(.top)
                
                VStack {
                    CardView()
                    CardView()
                }
                
                Spacer()
            }.navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .principal, content: {
                    HStack{
                        Text("Home").foregroundColor(.white)
                    }
                })
            })
        }
    }
}

struct PaginaInicioView_Previews: PreviewProvider {
    static var previews: some View {
        PaginaInicioView()
    }
}
