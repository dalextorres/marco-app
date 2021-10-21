//
//  VideoWebView.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 20/10/21.
//

import SwiftUI

struct VideoWebView: View {
    let url: String
    
    var body: some View {
        WebView(html: url)
    }
}

struct VideoWebView_Previews: PreviewProvider {
    static var previews: some View {
        VideoWebView(url: "https://bit.ly/swswift")
    }
}
