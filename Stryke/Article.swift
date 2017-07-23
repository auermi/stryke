//
//  Article.swift
//  Stryke
//
//  Created by Michael Andrew Auer on 7/22/17.
//  Copyright © 2017 Pear Bus. All rights reserved.
//

import Foundation

struct Article {
    var id: Int!
    var title: String!
    var url: String!
    var content: [NSObject]!
    
    init(_title: String!, _url: String!, _content: [NSObject]) {
        self.id = Int(arc4random_uniform(UInt32(4096)) + UInt32(0))
        self.title = _title
        self.url = _url
        self.content = _content
    }
}
