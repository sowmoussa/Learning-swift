//
//  ViewController.swift
//  Surf
//
//  Created by Moussa SOW on 18/04/2021.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var contact: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contact.layer.cornerRadius = 20
    }
}

