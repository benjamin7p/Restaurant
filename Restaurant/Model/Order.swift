//
//  Order.swift
//  Restaurant
//
//  Created by Benjamin Poulsen PRO on 1/4/19.
//  Copyright © 2019 Benjamin Poulsen PRO. All rights reserved.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}
