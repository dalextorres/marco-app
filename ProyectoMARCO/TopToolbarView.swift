//
//  TopToolbarView.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 09/09/21.
//

import SwiftUI

struct TopToolbarView: View {
    var body: some View {
        
        
            HStack {
                HStack {
                    Image("LogoMarco")
                        .resizable()
                        .frame(width: CGFloat(30), height: CGFloat(30), alignment: .center)
                }
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: PaginaLoginView(), label: {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: CGFloat(30), height: CGFloat(30), alignment: .trailing)
                    }).padding(.trailing, CGFloat(20))
                }
            }
        
    }
}

struct TopToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        TopToolbarView()
    }
}
