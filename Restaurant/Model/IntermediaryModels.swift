//
//  IntermediaryModels.swift
//  Restaurant
//
//  Created by Benjamin Poulsen PRO on 1/4/19.
//  Copyright © 2019 Benjamin Poulsen PRO. All rights reserved.
//

import Foundation

struct Categories: Codable {
    let categories: [String]
}

struct PreperationTime: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
