//
//  Singapore_DashApp.swift
//  Singapore Dash
//
//  Created by T Krobot on 22/7/23.
//

import SwiftUI

@main
struct Singapore_DashApp: App {
    @StateObject private var Inventory = CurrentInventory()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Inventory)
        }
    }
}
