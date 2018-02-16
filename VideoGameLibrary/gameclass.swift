//
//  gameclass.swift
//  VideoGameLibrary
//
//  Created by Keano Bellmore on 2/13/18.
//  Copyright © 2018 Keano Bellmore. All rights reserved.
//

import Foundation

class videoGame {
    var name: String
    var dueDate: Date
    var checkedIn = true
    
    init(name: String, dueDate: Date, checkedIn: Bool) {
        self.name = name
        self.dueDate = dueDate
        self.checkedIn = checkedIn
    }
}

