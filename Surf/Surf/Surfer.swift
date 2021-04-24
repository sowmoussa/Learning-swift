//
//  Surfer.swift
//  Surf
//
//  Created by Moussa SOW on 18/04/2021.
//

import Foundation


struct Surfer {
    var name: String
    var surname: String
    var nationality: String
    var profile: String {
        return name + "-profile"
    }
    var bg: String {
        return name + "-bg"
    }
}
