//
//  ViewController.swift
//  Listes
//
//  Created by Moussa SOW on 19/04/2021.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    var garcons = [Personne(name: "Moussa", image: nil, gender: Gender.homme, age: 26),
        Personne(name: "Samba", image: nil, gender: Gender.homme, age: 26),
        Personne(name: "Malick", image: nil, gender: Gender.homme, age: 26),
        Personne(name: "Khadime", image: nil, gender: Gender.homme, age: 26)
    ]
    
    var filles = [Personne(name: "Daba", image: nil, gender: Gender.femme, age: 23),
      Personne(name: "Awa", image: nil, gender: Gender.femme, age: 20),
      Personne(name: "Ami", image: nil, gender: Gender.femme, age: 18),
      Personne(name: "Diarra", image: nil, gender: Gender.femme, age: 16)
    ]
    
    var section: [SectionTable] = []
    
    func getSection() {
        section = [
            SectionTable(name: "Garçons", array: garcons),
            SectionTable(name: "Filles", array: filles)
        ]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        getSection()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return section.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row + 1
        let string = "\(index)"
        performSegue(withIdentifier: "detail", sender: string)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail", let new = segue.destination as? DetailController {
            new.string = sender as? String
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let indexSection = self.section[section].array
        return indexSection.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let personne = section[indexPath.section].array[indexPath.row]
        // dequeueReusableCell montre que les cell visibles
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? CustomCell{
            cell.personne = personne
            return cell
        } else {
            let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
            
            cell.textLabel?.text = personne.name
            cell.textLabel?.textColor = personne.color
            cell.detailTextLabel?.text = section[indexPath.section].name
            return cell
        }
    }
    /*func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.section[section].name
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Fin de liste pour \(self.section[section].name)"
    }*/
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let viewN = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 50))
        viewN.backgroundColor = .red
        let label = UILabel(frame: viewN.bounds)
        viewN.addSubview(label)
        label.text = self.section[section].name
        return viewN
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    /*
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let viewN = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 50))
        viewN.backgroundColor = .red
        return viewN
    }*/
}

