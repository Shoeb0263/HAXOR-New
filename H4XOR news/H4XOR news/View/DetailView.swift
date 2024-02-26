//
//  DetailView.swift
//  H4XOR news
//
//  Created by Shoeb's Macbook on 17/02/24.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    var body: some View {
        webView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}

