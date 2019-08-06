//
//  Person.swift
//  Project10
//
//  Created by Brandan McDevitt on 06/08/2019.
//  Copyright © 2019 Brandan McDevitt. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
}
