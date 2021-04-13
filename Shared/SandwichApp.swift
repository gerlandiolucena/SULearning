//
//  CombineLearningApp.swift
//  CombineLearning
//
//  Created by Gerlandio Lucena on 11/04/21.
//

import SwiftUI

@main
struct SandwichApp: App {
    @StateObject private var store = SandwichStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
