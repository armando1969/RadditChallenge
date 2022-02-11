//
//  Model.swift
//  RedditChallenge
//
//  Created by Consultant on 2/10/22.
//

import Foundation


struct RedditResponse {
    
    let kind: String
    let data: RedditData
}

struct RedditData {
    let after: String
    let children: [Child]
}

struct Child {
    let kind: String
    let data: Story
}

struct Story {
    let title: String
    let thumbnail: String
    let thumbnailHeight: Int?
    let score: Int
    let numComments: Int
    
    enum Codingkeys: String, CodingKey {
        case thumbnailHeight = "thumbnail_height"
        case numComments = "num_Comments"
    }
}
