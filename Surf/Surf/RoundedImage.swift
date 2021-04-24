//
//  RoundedImage.swift
//  Surf
//
//  Created by Moussa SOW on 18/04/2021.
//

import UIKit

class RoundedImage: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupRounded()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupRounded()
    }
    
    func setupRounded() {
        layer.cornerRadius = frame.height/2
        layer.borderWidth = 3
        layer.borderColor = UIColor.systemBackground.cgColor
    }
    
}
