//
//  MarcoTiendaView.swift
//  ProyectoMARCO
//
//  Created by user189955 on 10/20/21.
//

import SwiftUI

struct MarcoTiendaView: View {
    var body: some View {
        UrlWebView(urlToDisplay: URL(string: "https://storemarco.art")!)
    }
}

struct MarcoTiendaView_Previews: PreviewProvider {
    static var previews: some View {
        MarcoTiendaView()
    }
}
