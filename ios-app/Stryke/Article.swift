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
    var description: String!
    var guid: String!
    var pubDate: String!
    
    
    init(title: String!, url: String!, description: String!, guid: String!, pubDate: String!) {
        self.id = Int(arc4random_uniform(UInt32(4096)) + UInt32(0))
        self.title = title
        self.url = url
        self.description = description
        self.guid = guid
        self.pubDate = pubDate
    }
}
