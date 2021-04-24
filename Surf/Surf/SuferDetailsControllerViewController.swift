//
//  SuferDetailsControllerViewController.swift
//  Surf
//
//  Created by Moussa SOW on 18/04/2021.
//

import UIKit

class SuferDetailsControllerViewController: UIViewController {

    @IBOutlet weak var bgIV: UIImageView!
    @IBOutlet weak var profileIV: RoundedImage!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var nationalityLbl: UILabel!
    var surfer: Surfer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgIV.from(surfer.bg)
        profileIV.from(surfer.profile)
        nameLbl.text = surfer.surname+" "+surfer.name
        nationalityLbl.text = surfer.nationality
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }*/
    

}
