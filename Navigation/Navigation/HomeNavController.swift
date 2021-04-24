//
//  HomeNavController.swift
//  Navigation
//
//  Created by Moussa SOW on 18/04/2021.
//

import UIKit

class HomeNavController: UIViewController {

    var segue: String = "infos"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == self.segue {
            if let new = segue.destination as? SecondNavController {
                new.sender = sender as? UIColor
            }
        }
    }
    
    @IBAction func actionBtn(_ sender: Any) {
        performSegue(withIdentifier: self.segue, sender: UIColor.blue)
    }

}
