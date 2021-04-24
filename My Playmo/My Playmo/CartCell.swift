//
//  CartCell.swift
//  My Playmo
//
//  Created by matthieu passerel on 03/09/2020.
//

import UIKit

class CartCell: UITableViewCell {
    
    var iv: UIImageView?
    var nameLbl: UILabel?
    var priceLabel: UILabel?
    
    
    func setupCell(_ playmobil: Playmobil) {
        setIfNil()
        iv?.image = playmobil.image
        nameLbl?.text = playmobil.name
        priceLabel?.text = playmobil.priceEuro()
    }

    func setIfNil() {
        if iv == nil {
            iv = UIImageView()
            iv?.contentMode = .scaleAspectFit
            iv?.clipsToBounds = true
            iv?.translatesAutoresizingMaskIntoConstraints = false
            addSubview(iv!)
        }
        if nameLbl == nil {
            nameLbl = UILabel()
            nameLbl?.textColor = UIColor(red: 42 / 255, green: 149 / 255, blue: 212 / 255, alpha: 1)
            nameLbl?.font = UIFont(name: "blippo", size: 17)
            nameLbl?.translatesAutoresizingMaskIntoConstraints = false
            nameLbl?.textAlignment = .center
            addSubview(nameLbl!)
        }
        if priceLabel == nil {
            priceLabel = UILabel()
            priceLabel?.textColor = .red
            priceLabel?.font = UIFont(name: "blippo", size: 17)
            priceLabel?.translatesAutoresizingMaskIntoConstraints = false
            priceLabel?.textAlignment = .right
            addSubview(priceLabel!)
        }
        
        iv?.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        iv?.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        iv?.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nameLbl?.topAnchor.constraint(equalTo: topAnchor).isActive = true
        nameLbl?.leftAnchor.constraint(equalTo: iv!.rightAnchor).isActive = true
        nameLbl?.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        priceLabel?.topAnchor.constraint(equalTo: nameLbl!.bottomAnchor).isActive = true
        priceLabel?.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        priceLabel?.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        priceLabel?.leftAnchor.constraint(equalTo: iv!.rightAnchor).isActive = true
        priceLabel?.heightAnchor.constraint(equalToConstant: 21).isActive = true
        
    }
}
