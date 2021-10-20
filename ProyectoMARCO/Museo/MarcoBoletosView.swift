//
//  MarcoBoletosView.swift
//  ProyectoMARCO
//
//  Created by user189955 on 10/20/21.
//

import SwiftUI
import WebKit

struct MarcoBoletosView: View {
    var body: some View {
        UrlWebView(urlToDisplay: URL(string: "https://www.marco.org.mx/boletos/")!)
    }
}

struct MarcoBoletosView_Previews: PreviewProvider {
    static var previews: some View {
        MarcoBoletosView()
    }
}
