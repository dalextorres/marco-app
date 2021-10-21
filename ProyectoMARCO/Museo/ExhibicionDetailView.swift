//
//  ExhibicionDetailView.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 20/10/21.
//

import SwiftUI

struct ExhibicionDetailView: View {
    
    let name : String
    let author : String
    let descripcion : String
    let img : String
    let url : String
    
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    Image(img)
                        .resizable()
                        .scaledToFit()
                        .opacity(0.3)
                    HStack {
                        VStack {
                            Text(name)
                                .font(.headline)
                            Text(author)
                                .font(.caption)
                        }
                    }
                }
                Text(descripcion)
                    .multilineTextAlignment(.center)
                    .padding()
                
                VideoWebView(url: url)
                    .frame(height: 300)
                
            }
            .padding()
        }
    }
}

struct ExhibicionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExhibicionDetailView(name: "Pintura", author: "Alex Torres", descripcion: "Una pintura", img: "image 16", url: "https://bit.ly/swswift")
    }
}
