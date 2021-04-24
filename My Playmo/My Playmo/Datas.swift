//
//  Datas.swift
//  My Playmo
//
//  Created by matthieu passerel on 03/09/2020.
//

import Foundation

var selected = [Playmobil]()

class Datas {
    
    func from(_ category: PlaymobilCategory) -> [Playmobil] {
        return allPlaymo().filter({$0.category == category})
    }

    func allPlaymo() -> [Playmobil] {
        return [
            Playmobil(name: "Mont Olympe", reference: 123, price: 114.99, category: .histoire),
            Playmobil(name: "Argo et les argonautes", reference: 124, price: 54.99, category: .histoire),
            Playmobil(name: "Zeus", reference: 125, price: 4.49, category: .histoire),
            Playmobil(name: "3 soldats romains", reference: 126, price: 8.49, category: .histoire),
            Playmobil(name: "Athena", reference: 234, price: 4.49, category: .histoire),
            Playmobil(name: "Famille Egyptienne", reference: 12, price: 10.99, category: .histoire),
            Playmobil(name: "StarterPack sirenes avec carrosse", reference: 345, price: 15.99, category: .sirenes),
            Playmobil(name: "Roi des mers et sirene", reference: 567, price: 5.29, category: .sirenes),
            Playmobil(name: "Pavillon de corail avec dome lumineux", reference: 3245, price: 67.99, category: .sirenes),
            Playmobil(name: "Sirene", reference: 654, price: 4.19, category: .sirenes),
            Playmobil(name: "Bateau pirate", reference: 9887, price: 94.99, category: .pirates),
            Playmobil(name: "3 pirates fantomes", reference: 4567, price: 8.99, category: .pirates),
            Playmobil(name: "Bastion des soldats", reference: 729, price: 49.99, category: .pirates),
            Playmobil(name: "Pirate avec coffre au tresor ", reference: 12356, price: 4.19, category: .pirates),
            Playmobil(name: "Repaire du tresor des pirates", reference: 657, price: 22.99, category: .pirates),
            Playmobil(name: "Rosalee", reference: 23, price: 16.99, category: .everDreamerz),
            Playmobil(name: "Coffret surprise", reference: 7609, price: 7.49, category: .everDreamerz),
            Playmobil(name: "Viona", reference: 5467, price: 16.99, category: .everDreamerz),
            Playmobil(name: "Starleen", reference: 908, price: 16.99, category: .everDreamerz),
            Playmobil(name: "Clare", reference: 457435, price: 16.99, category: .everDreamerz),
            Playmobil(name: "Edwina", reference: 567644, price: 16.99, category: .everDreamerz),
        ]
    }
}
