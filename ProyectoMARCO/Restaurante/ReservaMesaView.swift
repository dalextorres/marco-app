//
//  ReservaMesaView.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 07/09/21.
//

import SwiftUI

struct ReservaMesaView: View {
    var body: some View {
        VStack {
            Text("Reservaciones")
            Text("Télefono")
            Text("T. +52 (81) 8262.4562, 63 y 64")
            Text("Email")
            Text("eventos@marco.org.mx")
            Text("Dirección")
            Text("Zuazua y Jardón S/N, Centro. Monterrey, N.L., México. 64000")
        }
    }
}

struct ReservaMesaView_Previews: PreviewProvider {
    static var previews: some View {
        ReservaMesaView()
    }
}
