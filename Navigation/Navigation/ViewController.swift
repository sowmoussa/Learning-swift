//
//  ViewController.swift
//  Navigation
//
//  Created by Moussa SOW on 18/04/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail" {
            if let newController = segue.destination as? SecondController {
                newController.view.backgroundColor = .red
                if let info = sender as? String {
                    newController.sender = info
                }
            }
        }
    }
    
    @IBAction func avecDetail(_ sender: Any) {
        //performSegue(withIdentifier: "detail", sender: "Moscar")
        
        let newController = UIViewController()
        newController.view.backgroundColor = .blue
        present(newController, animated: true, completion: nil)
    }
    
}

