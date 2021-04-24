//
//  ExtensionUIImageView.swift
//  Surf
//
//  Created by Moussa SOW on 18/04/2021.
//

import UIKit

extension UIImageView {
    func from(_ imageString: String) {
        let image = UIImage(named: imageString.lowercased())
        self.image = image
    }
}
