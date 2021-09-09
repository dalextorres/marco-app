//
//  Button.swift
//  ProyectoMARCO
//
//
import SwiftUI

struct BotonImagen: View {
    var buttonImage : String
    var body: some View {
        Image(buttonImage)
            .resizable()
            .scaledToFit()
            .frame(height: 230)
            .shadow(radius: 10)

    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        BotonImagen(buttonImage: "image 15")
    }
}
