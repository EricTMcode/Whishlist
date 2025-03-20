//
//  WhishlistApp.swift
//  Whishlist
//
//  Created by Eric on 20/03/2025.
//

import SwiftUI
import SwiftData

@main
struct WhishlistApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Wish.self)
    }
}
