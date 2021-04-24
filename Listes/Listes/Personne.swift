//
//  Personne.swift
//  Listes
//
//  Created by Moussa SOW on 19/04/2021.
//

import UIKit

struct Personne {
    var name: String
    var image: String?
    var gender: Gender
    var age: Int
    
    var color: UIColor {
        return gender == .homme ? .systemTeal : .blue
    }
}

enum Gender {
    case homme, femme
}

struct SectionTable {
    var name: String
    var array: [Personne]
}
