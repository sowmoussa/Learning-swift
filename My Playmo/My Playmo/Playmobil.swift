//
//  Playmobil.swift
//  My Playmo
//
//  Created by matthieu passerel on 03/09/2020.
//

import UIKit

struct Playmobil {
    var name: String
    var reference: Int
    var price: Double
    var category: PlaymobilCategory
    
    func priceEuro() -> String {
        return "\(price)€"
    }
    
    var image: UIImage? {
        return UIImage(named: name)
    }
    
    var refString: String {
        return "Ref: \(reference)"
    }
}
