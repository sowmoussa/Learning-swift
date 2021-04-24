//
//  SecondController.swift
//  Navigation
//
//  Created by Moussa SOW on 18/04/2021.
//

import UIKit

class SecondController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    var sender: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let text = sender {
            btn.setTitle(text, for: .normal)
        }
    }
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
