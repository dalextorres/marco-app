//
//  Button.swift
//  ProyectoMARCO
//
//

import SwiftUI

struct Button: View {
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
        Button(buttonImage: "image 15")
    }
}
