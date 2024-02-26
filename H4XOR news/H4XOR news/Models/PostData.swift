//
//  PostData.swift
//  H4XOR news
//
//  Created by Shoeb's Macbook on 12/02/24.
//

import Foundation
struct Results: Decodable {
    let hits: [Post]
}
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
