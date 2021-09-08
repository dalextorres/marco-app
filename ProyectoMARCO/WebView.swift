//
//  WebView.swift
//  ProyectoMARCO
//
//  Created by Alejandro Torres on 08/09/21.
//

import SwiftUI
import WebKit

public struct WebView: UIViewRepresentable {

    let html: String

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: html)!))
        uiView.allowsBackForwardNavigationGestures = false
    }
}
