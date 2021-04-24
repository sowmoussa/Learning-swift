//
//  DetailController.swift
//  Listes
//
//  Created by Moussa SOW on 19/04/2021.
//

import UIKit

class DetailController: UIViewController {

    var string: String?
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let newString = string {
            titleLabel.text = "String reçue \(newString)"
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
