//
//  ViewController.swift
//  Interaction
//
//  Created by Moussa SOW on 17/04/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myImage: UIImageView!
    var cornerRadius: CGFloat = 30
    var isTouched = false
    var center: CGPoint!
    var colors: [UIColor] = [.red, .green, .blue, .orange]
    @IBOutlet var buttons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for index in 0..<buttons.count {
            buttons[index].backgroundColor = colors[index]
        }
        myButton.layer.cornerRadius = cornerRadius
        myLabel.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapLabel))
        myLabel.addGestureRecognizer(tap)
        myImage.isUserInteractionEnabled = true
        center = myImage.center
        //myButton.isEnabled = true
    }

    @objc func tapLabel() {
        print("Je suis touché")
    }
    func setupTouch(touches: Set<UITouch>) -> CGPoint! {
        if let first = touches.first {
            if first.view == myImage {
                return first.location(in: view )
            }
        }
        return nil
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(setupTouch(touches: touches))
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let newPoint = setupTouch(touches: touches) {
            myImage.center = newPoint
        }
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let lastTouched = setupTouch(touches: touches) {
            myImage.center = center
        }
    }
    
    
    @IBAction func buttonAction(_ sender: Any) {
        isTouched.toggle()
        cornerRadius = isTouched ? 0 : 30
        myButton.layer.cornerRadius = cornerRadius
    }

    @IBAction func multpleAction(_ sender: UIButton) {
        print("OK")
        print(sender.tag)
        myButton.backgroundColor = colors[sender.tag]
    }
}

