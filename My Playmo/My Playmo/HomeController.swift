//
//  ViewController.swift
//  My Playmo
//
//  Created by matthieu passerel on 03/09/2020.
//

import UIKit

class HomeController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "toDetail" else { return }
        guard let controller = segue.destination as? PlaymobilController else { return }
        controller.category = sender as? PlaymobilCategory
    }
    
    @IBAction func cartPressed(_ sender: Any) {
        let selection = CartController()
        present(selection, animated: true, completion: nil)
    }
    
    
}

extension HomeController: UITableViewDelegate, UITableViewDataSource {
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlaymobilCategory.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            cell.category = PlaymobilCategory.allCases[indexPath.row]
            return cell
        }
        let cell = UITableViewCell()
        cell.textLabel?.text = PlaymobilCategory.allCases[indexPath.row].rawValue
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = PlaymobilCategory.allCases[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: category)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.width * 0.8
    }
}

