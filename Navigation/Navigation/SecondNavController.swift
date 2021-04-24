//
//  SecondNavController.swift
//  Navigation
//
//  Created by Moussa SOW on 18/04/2021.
//

import UIKit

class SecondNavController: UIViewController {

    var sender: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let color = sender {
            view.backgroundColor = color
        }
    }

}
