//
//  WebView.swift
//  H4XOR news
//
//  Created by Shoeb's Macbook on 17/02/24.
//

import Foundation
import WebKit
import SwiftUI
struct webView: UIViewRepresentable {
    let urlString: String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

