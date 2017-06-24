//
//  DateTime.swift
//  Stryke
//
//  Created by Michael Andrew Auer on 6/24/17.
//  Copyright © 2017 Pear Bus. All rights reserved.
//

import Foundation

struct DateTime {
    
    
    func dateToString(date: Date) -> String {
        
        let df: DateFormatter = DateFormatter()
        df.dateFormat = "HH:mm"
        
        return df.string(from: date)
    }
}
