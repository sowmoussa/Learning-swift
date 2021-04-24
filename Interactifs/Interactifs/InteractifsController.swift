//
//  InteractifsController.swift
//  Interactifs
//
//  Created by Moussa SOW on 19/04/2021.
//

import UIKit

class InteractifsController: UIViewController {

    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var silder: UISlider!
    @IBOutlet weak var silderLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var stepLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabelSwitch()
        mySwitch.onTintColor = .yellow
        mySwitch.thumbTintColor = .brown
        // Do any additional setup after loading the view.
    }
    

    @IBAction func stepAction(_ sender: UIStepper) {
        print(sender.value)
    }
    @IBAction func slinding(_ sender: UISlider) {
        print(sender.value)
    }
    @IBAction func switchPressed(_ sender: UISwitch) {
        setupLabelSwitch()
    }
    
    func setupLabelSwitch() {
        switchLabel.textColor = mySwitch.isOn ? .label : .red
        switchLabel.text = "Je suis on: \(mySwitch.isOn)"
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
