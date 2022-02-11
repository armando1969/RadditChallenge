//
//  ViewModel.swift
//  RedditChallenge
//
//  Created by Consultant on 2/10/22.
//

import Foundation
import UIKit
import Combine

class ViewModel {
    
    private let networkManager = NetworkManager()
    private var after = ""
    @Published private(set) var stories = [Story]()  //access control

    func getStories() {
        networkManager
            .getModel(RedditResponse.self, from: "https://www.Reddit.com") { result in
                switch result {
                case .success(let response):
                    let children = response.data.children
                    var stories = [Story]()
                    for child in children {
                        stories.append(child.data)
                        
    //the previous lines could be done self?.stories = response.data.children.map { $0.data }
                    }
                    self.stories = stories
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        
    }
}
