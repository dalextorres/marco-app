//
//  CursoDetailView.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 21/10/21.
//

import SwiftUI

struct CursoDetailView: View {
    
    let url : String
    
    var body: some View {
        UrlWebView(urlToDisplay: URL(string: url)!)
    }
}

struct CursoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CursoDetailView(url: "https://www.marco.org.mx//inscripciones-pinturaydibujo/")
    }
}
