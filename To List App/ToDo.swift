//
//  ToDo.swift
//  To List App
//
//  Created by Leonardo Gómez on 4/28/20.
//  Copyright © 2020 Leonardo Gómez. All rights reserved.
//

import UIKit

class ToDo {
    var name = ""
    var important = false
    
//    Constructors for this class
    init(name: String) {
        self.name = name
    }
    
    init(name: String, important: Bool) {
        self.name = name
        self.important = important
    }
}
