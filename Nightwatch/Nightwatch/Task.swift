//
//  Task.swift
//  Nightwatch
//
//  Created by Moussa SOW on 10/04/2021.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    let name: String
    var isComplete: Bool
    var lastCompleted: Date?
}
