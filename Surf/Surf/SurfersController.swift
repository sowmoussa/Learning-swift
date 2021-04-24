//
//  SurfersController.swift
//  Surf
//
//  Created by Moussa SOW on 18/04/2021.
//

import UIKit

class SurfersController: UIViewController {

    @IBOutlet weak var rankingLabel: UILabel!
    @IBOutlet weak var surferIV: RoundedImage!
    @IBOutlet weak var surferName: UILabel!
    var current: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSurfer()
        surferIV.isUserInteractionEnabled = true
        surferIV.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(surferTap)))
    }
    

    @IBAction func previousSurfer(_ sender: Any) {
        if current != 0 {
            current -= 1
        } else {
            current = surfers().count-1
        }
        setupSurfer()
    }
    
    @IBAction func nextSurfer(_ sender: Any) {
        
        if current < surfers().count-1 {
            current += 1
        }else{
            current=0
        }
        setupSurfer()
    }
    
    func setupSurfer() {
        let surfer = surfers()[current]
        rankingLabel.text = "Classement \(current+1)"
        surferIV.from(surfer.profile)
        surferName.text = surfer.surname+" "+surfer.name
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "details" else {
            return
        }
        guard let next = segue.destination as? SuferDetailsControllerViewController else {
            return
        }
        
        next.surfer = surfers()[current]
    }
    
    @objc func surferTap() {
        performSegue(withIdentifier: "details", sender: nil)
    }
}
