//
//  CategoryCell.swift
//  My Playmo
//
//  Created by matthieu passerel on 03/09/2020.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var catIV: UIImageView!
    @IBOutlet weak var catLbl: UILabel!
    
    var category: PlaymobilCategory! {
        didSet {
            catLbl.text = category.rawValue
            catIV.image = category.toImage()
        }
    }

}
