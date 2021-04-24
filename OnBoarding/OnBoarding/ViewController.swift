//
//  ViewController.swift
//  OnBoarding
//
//  Created by Moussa SOW on 20/04/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if(Core.shared.isNewUser()) {
            // show OnBoarding
            let vc = storyboard?.instantiateViewController(identifier: "welcome") as! WelcomeController
            
            vc.modalPresentationStyle = .fullScreen
            
            present(vc, animated: true)
        }
    }

}

// check if a user is a new or not
class Core {
    static let shared = Core()
    
    func isNewUser() -> Bool {
        return !UserDefaults.standard.bool(forKey: "isNewUser")
    }
    
    func isNotNew() {
        UserDefaults.standard.set(true, forKey: "isNewUser")
    }
}
