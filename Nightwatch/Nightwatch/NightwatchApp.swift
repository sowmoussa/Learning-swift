//
//  NightwatchApp.swift
//  Nightwatch
//
//  Created by Moussa SOW on 06/04/2021.
//

import SwiftUI

@main
struct NightwatchApp: App {
    @StateObject private var nightWatchs = NightWatchTasks()
    
    var body: some Scene {
        WindowGroup {
            ContentView(nighWatchTasks: nightWatchs)
        }
    }
}
