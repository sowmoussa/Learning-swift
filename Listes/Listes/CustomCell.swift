//
//  CustomCell.swift
//  Listes
//
//  Created by Moussa SOW on 19/04/2021.
//

import UIKit

class CustomCell: UITableViewCell {

    
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageIV: UIImageView!
    
    var personne: Personne! {
        didSet {
            ageLabel.text = "\(personne.age) ans."
            nameLabel.text = personne.name
            imageIV.image = UIImage(systemName: personne.image ?? "person.circle")
        }
    }
    
    
}
