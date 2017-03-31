//
//  File.swift
//  donutMe
//
//  Created by Josh & Erica on 3/27/17.
//  Copyright © 2017 Josh McDonald. All rights reserved.
//

import Foundation

class Donut {
    
    let name: String
    let donutInfo: String
    let imageName: String
    
    init(name: String, donutInfo: String) {
        
        self.name = name
        self.donutInfo = donutInfo
        self.imageName = name.lowercased()
    }
    
}
