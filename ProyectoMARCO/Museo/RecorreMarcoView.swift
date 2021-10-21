//
//  RecorreMarcoView.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 20/10/21.
//

import SwiftUI
import WebKit

struct RecorreMarcoView: View {
    var body: some View {
        UrlWebView(urlToDisplay: URL(string: "https://www.patiomarco.360s.mx/")!)
    }
}

struct RecorreMarcoView_Previews: PreviewProvider {
    static var previews: some View {
        RecorreMarcoView()
    }
}
