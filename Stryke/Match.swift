//
//  Match.swift
//  Stryke
//
//  Created by Michael Andrew Auer on 6/10/17.
//  Copyright © 2017 Pear Bus. All rights reserved.
//

import Foundation

class Match {
    var id: Int!
    var name: String!
    var date: Date!
    var teams: [String]!
    
    init(_name: String, _teams: [String]) {
        id = Int(arc4random_uniform(UInt32(4096)) + UInt32(0))
        name = _name
        date = Date.init()
        teams = _teams
    }
}
