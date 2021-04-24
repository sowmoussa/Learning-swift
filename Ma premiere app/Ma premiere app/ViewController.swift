//
//  ViewController.swift
//  Ma premiere app
//
//  Created by Moussa SOW on 15/04/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fond: UIView!
    @IBOutlet weak var imageBack: UIView!
    @IBOutlet weak var pharmacy: UIImageView!
    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var step: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        //imageBack.layer.cornerRadius = 20
        nextButton.layer.cornerRadius = 20
        
    }
}

