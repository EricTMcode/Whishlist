//
//  ContentView.swift
//  Whishlist
//
//  Created by Eric on 20/03/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var wishes: [Wish]

    var body: some View {
        NavigationStack {
            List {
                ForEach(wishes) { wish in
                    Text(wish.title)
                }
            }
            .navigationTitle("Wishlist")
            .overlay {
                if wishes.isEmpty {
                    ContentUnavailableView("My Whishlist", systemImage: "heart.circle", description: Text("No wishes yet. Add one to get started."))
                }
            }
        }
    }
}

#Preview("Empty List") {
    ContentView()
        .modelContainer(for: Wish.self, inMemory: true)
}

#Preview("List with Sample Data") {
    let container = try! ModelContainer(for: Wish.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))

    container.mainContext.insert(Wish(title: "Master SwiftData"))
    container.mainContext.insert(Wish(title: "Buy a new iPhone"))
    container.mainContext.insert(Wish(title: "Practice latin dances"))
    container.mainContext.insert(Wish(title: "Travel to Europe"))
    container.mainContext.insert(Wish(title: "Make a positive impact"))

    return ContentView()
        .modelContainer(container)
}
