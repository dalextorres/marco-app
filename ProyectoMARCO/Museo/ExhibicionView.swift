//
//  ExhibicionView.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 19/10/21.
//

import SwiftUI

struct ExhibicionView: View {
    
    let img : String
    let name : String
    let author : String
    
    var body: some View {
        ZStack{
            Image(img)
                .resizable()
                .scaledToFit()
                .frame(width:400 ,height: 240)
                .shadow(radius: 10)
            
            VStack {
                Text(name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: 360, alignment: .leading)
                    .foregroundColor(Color("Blanco"))
                    .multilineTextAlignment(.center)
                
                Text(author)
                    .font(.title)
                    .frame(width: 360, alignment: .leading)
                    .foregroundColor(Color("Blanco"))
                    .multilineTextAlignment(.center)
                
                Spacer()
            }
        }
    }
}

struct ExhibicionView_Previews: PreviewProvider {
    static var previews: some View {
        ExhibicionView(img: "image 16", name: "NOMBRE", author: "autor")
    }
}
