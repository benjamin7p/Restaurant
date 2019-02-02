//
//  OrderConfirmationViewController.swift
//  Restaurant
//
//  Created by Benjamin Poulsen PRO on 1/25/19.
//  Copyright © 2019 Benjamin Poulsen PRO. All rights reserved.
//

import UIKit

class OrderConfirmationViewController: UIViewController {
    @IBOutlet weak var timeRemainingLabel: UILabel!
    
    var minutes: Int!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeRemainingLabel.text = "Thank you for your order! Your wait time is approximately \(minutes!) minutes."

    }
}
