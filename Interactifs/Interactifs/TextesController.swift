//
//  TextesController.swift
//  Interactifs
//
//  Created by Moussa SOW on 19/04/2021.
//

import UIKit

class TextesController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(closeKeyboard))
        view.addGestureRecognizer(tap)
        textField.delegate = self
        textView.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillAppear), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillAppear(_ notification: Notification) {
        if textView.isFirstResponder {
            if let size = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                let height = size.height
                UIView.animate(withDuration: 0.5) {
                    self.view.center.y -= (height - 150)
                }
            }
        }
    }
    
    @objc func keyboardWillHide(_ notification: Notification) {
        if textView.isFirstResponder {
            if let size = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                let height = size.height
                UIView.animate(withDuration: 0.5) {
                    self.view.center.y += (height - 150)
                }
            }
        }
    }
    
    @IBAction func phoneAdded(_ sender: UIButton) {
        closeKeyboard()
        phoneNumber.text = phone.text
        if let number = phone.text, number != " " {
            print("String: \(number)")
            if let intNumber = Int(number) {
                print("Int: \(intNumber)")
            }
        }
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        print("Did begin editing")
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        print("Did end editing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Did end editing: \(String(describing: textField.text))")
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print("Did end editing reason: \(String(describing: textField.text))")
        nameLabel.text = textField.text
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Did begin editing: \(String(describing: textField.text))")
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print("Did change editing: \(String(describing: textField.text))")
        nameLabel.text = textField.text
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Did should return editing: \(String(describing: textField.text))")
        closeKeyboard()
        return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("Did should clear editing: \(String(describing: textField.text))")
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("Did should begin editing: \(String(describing: textField.text))")
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("Did should edit editing: \(String(describing: textField.text))")
        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("Did text field should ch: \(String(describing: textField.text)) + \(range)  + Replacement \(string)")
        return true
    }
    
    @objc func closeKeyboard() {
        view.endEditing(true)
    }
    @IBAction func nameTFDidEditing(_ sender: UITextField) {
        print("did end edit \(String(describing: sender.text))")
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
