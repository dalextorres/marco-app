//
//  Button.swift
//  ProyectoMARCO
//
//
import SwiftUI

struct BotonImagen: View {
    var buttonImageName : String
    var body: some View {
        Image(buttonImageName)
            .resizable()
            .scaledToFit()
            .frame(height: 230)
            .shadow(radius: 10)

    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        BotonImagen(buttonImageName: "image 15")
    }
}
