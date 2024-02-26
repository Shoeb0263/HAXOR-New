//
//  ContentView.swift
//  H4XOR news
//
//  Created by Shoeb's Macbook on 11/02/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
                
            }
            .navigationBarTitle("H4XOR NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}




//let posts = [
//         Post(id: "1", title: "Hello"),
//         Post(id: "2", title: "Bonjour"),
//         Post(id: "3", title: "Marhaba")
//]
