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
    
    func submitButtonTapped(_ sender: Any) {
        let orderTotal = MenuController.shared.order.menuItems.reduce(0.0)
        { (result, menuItem) -> Double in
            return result + menuItem.price
        }
        let formattedOrder = String(format: "%$.2f", orderTotal)
        let alert = UIAlertController(title: "Confirm Order", message: "You are about to confirm your order with the total of \(formattedOrder)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Submit", style: .default) { action in
            self.uploadOrder()
        })
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
    }
    
    var orderMinutes = 0
    
    func uploadOrder() {
        let menuIds = MenuController.shared.order.menuItems.map
        { $0.id }
        MenuController.shared.submitOrder(forMenuIDs: menuIds) { (minutes) in
            DispatchQueue.main.async {
                if let minutes = minutes {
                    self.orderMinutes = minutes
                    self.performSegue(withIdentifier: "ConfirmationSegue", sender: nil)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
