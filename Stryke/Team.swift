//
//  Team.swift
//  Stryke
//
//  Created by Michael Andrew Auer on 6/25/17.
//  Copyright © 2017 Pear Bus. All rights reserved.
//

import Foundation

struct Team {
    var id: Int!
    var name: String!
    var players: [String]!
    var location: String!
    var rank: Int!
    
    init(_name: String!, _players: [String]!, _location: String!, _rank: Int!) {
        id = Int(arc4random_uniform(UInt32(4096)) + UInt32(0))
        name = _name
        players = _players
        location = _location
        rank = _rank
    }
}
