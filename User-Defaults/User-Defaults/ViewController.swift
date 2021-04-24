//
//  ViewController.swift
//  User-Defaults
//
//  Created by Moussa SOW on 20/04/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var button: UISwitch!
    var array: [String] = [] {
        didSet {
            if oldValue != array {
                userDefaults.setValue(array, forKey: arrayKey)
            }
        }
    }
    var userDefaults = UserDefaults.standard
    let arrayKey = "key"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        getArray()
    }

    func getArray() {
        if let newArray = userDefaults.array(forKey: arrayKey) as? [String] {
            array = newArray
        }
    }
    /*
    func setArray(_ newArray: [String]) {
        userDefaults.setValue(newArray, forKey: arrayKey)
    }*/
    
    @IBAction func sendButton(_ sender: Any) {
        view.endEditing(true)
        if let course = textField.text, course != "" {
            // var new = array
            //new.append(course)
            //setArray(new)
            //getArray()
            array.append(course)
            tableView.reloadData()
            textField.text = nil
        }else{
            print("Aucune saisie")
        }
        // print(textField!.text)
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let item = array[indexPath.row]
        cell.textLabel?.text = item
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            array.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
