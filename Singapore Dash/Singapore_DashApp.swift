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
//environment variables: can be used in every view but needs to add some things
//dm thet pai if you want to make one
