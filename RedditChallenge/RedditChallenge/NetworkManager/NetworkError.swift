//
//  NetworkError.swift
//  RedditChallenge
//
//  Created by Consultant on 2/10/22.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case other(Error)
}
