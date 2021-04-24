//
//  PlaymobilCategory.swift
//  My Playmo
//
//  Created by matthieu passerel on 03/09/2020.
//

import UIKit

enum PlaymobilCategory: String, CaseIterable {
    case histoire
    case sirenes
    case pirates
    case everDreamerz
    
    func toImage() -> UIImage? {
        return UIImage(named: self.rawValue)
    }
}
