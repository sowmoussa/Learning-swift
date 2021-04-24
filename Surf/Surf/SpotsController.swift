//
//  SpotsController.swift
//  Surf
//
//  Created by Moussa SOW on 18/04/2021.
//

import UIKit

class SpotsController: UIViewController {

    @IBOutlet weak var spotName: UILabel!
    @IBOutlet weak var spotIV: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    var spotIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
        setupSpot()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAction(_ sender: UIButton) {
        spotIndex = sender.tag
        setupSpot()
    }
    
    func setupSpot() {
        spotName.text = spots[spotIndex].name
        spotIV.from(spots[spotIndex].name.lowercased())
    }
    func setupButtons() {
        buttons.forEach{ (button) in
            let spot = spots[button.tag]
            let image = UIImage(named: spot.name.lowercased())
           button.setImage(image, for: .normal)
        }
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
