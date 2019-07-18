//
//  Petition.swift
//  Project07
//
//  Created by Brandan McDevitt on 18/07/2019.
//  Copyright © 2019 Brandan McDevitt. All rights reserved.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
